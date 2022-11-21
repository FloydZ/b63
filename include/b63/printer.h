/*
 * Copyright 2019 Oleksandr Kuvshynov
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *   http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

#ifndef _B63_PRINTER_
#define _B63_PRINTER_

#include "benchmark.h"
#include "suite.h"
#include "utils/stats.h"

#include <inttypes.h>
#include <stdio.h>

const char *B63_CLR_RED = "\033[0;31m";
const char *B63_CLR_GREEN = "\033[0;32m";
const char *B63_CLR_RESET = "\033[0m";

static void b63_print_individual(b63_benchmark *bm, const char *counter,
                                 b63_stats *tt) {
  static int called = 0;

  // print json
  if (bm->suite->printer_config.plaintext == 2) {
	if (called == 1){
	  printf(",");
	}
    printf("{\n\t\"name\": \"%s_%s\",\n\t\"unit\":\"events/s\",\n\t\"value\": %f,\n\t\"extra\": \"%s\"\n}\n",
		   bm->name,
		   counter,
           1.0f * tt->sum_test / tt->n,
		   bm->name);
	 
	 // i dont know if this is importnt
   	 fflush(stdout);

	 called = 1;
	 return;
  }
 
  // only print if -i was passed
  if (bm->suite->printer_config.plaintext != 0) {
    return;
  }

  if (bm->failed) {
    printf("%s%-30s%-20s: assertion fail%s\n", B63_CLR_RED,
           bm->name, counter, B63_CLR_RESET);
    return;
  }

  printf("%-30s%-20s: %6.3lf\n", bm->name, counter, tt->sum_test / tt->n);
}

static void b63_print_comparison(b63_benchmark *bm, 
								const char *counter,
                                 b63_stats *tt) {

  // == 1 means that the -i and -j flag was not passed
  if (bm->suite->printer_config.plaintext == 1) {
    return;
  }
  
  // TODO print also json
  if (bm->failed) {
    printf("%s%-30s%-20s: assertion fail%s\n", B63_CLR_RED,
           bm->name, counter, B63_CLR_RESET);
    return;
  }
  
  double d = b63_stats_diff(tt);
  double percentage_diff = b63_stats_percentage_diff(tt);
  double interval99 = b63_stats_99_interval(tt);
  double a = d - interval99;
  double b = d + interval99;
  const char *c = B63_CLR_RESET;
  char confident = ' ';

  /* confidence interval outside of 0 */
  if (a * b > 0) {
    c = d < 0 ? B63_CLR_GREEN : B63_CLR_RED;
    confident = '*';
  }
  
  // either print json
  if (bm->suite->printer_config.plaintext == 2) {
    printf(",{\n\t\"name\": \"%s_%s\",\n\t\"unit\":\"events/s\",\n\t\"value\": %f,\n\t\"extra\": \"%s (%f)%d\"\n}\n",
		   bm->name,
		   counter,
           1.0f * tt->sum_test / tt->n,
		   bm->name,
		   percentage_diff,
		   confident);
   	 fflush(stdout);
	 return;
  }

  // or normal
  printf("%-30s%-20s: %s%6.3lf (%+6.3lf%% %c)%s\n", bm->name, counter, c,
         tt->sum_test / tt->n, percentage_diff, confident, B63_CLR_RESET);

  fflush(stdout);
}

static void b63_print_done(b63_epoch *r) {
  /* plaintext output */

  // print json
  //if (r->benchmark->suite->printer_config.plaintext == 2) {
  //  // example output
  //  //{
  //  //    "name": "My Custom Smaller Is Better Benchmark - CPU Load",
  //  //    "unit": "Percent",
  //  //    "value": 50
  //  //},
  //		printf("{\n\t\"name:\" \"%s\",\n\t\"unit\":\"events/s\",\n\t\"value\": %f,\n\t\"extra\": \"%s\"\n},\n",
  //  	   r->counter->name,
  //         1.0f * (double)(r->events) / (double)(r->iterations),
  //  	   r->benchmark->name);
  // 	 fflush(stdout);
  //   return;
  //}

  //
  if (r->benchmark->suite->printer_config.plaintext == 2) {
	  return;
  }
  if (r->benchmark->suite->printer_config.plaintext != 0) {
    char d = r->benchmark->suite->printer_config.delimiter;
	 // printf("%s%c%s\n",
	 //        r->benchmark->name, d,
	 //        r->counter->name
	 // );
	
	// print correct values without leak
	printf("%s%c%s%c%" PRId64 "%c%" PRId64 "%c%lf\n",
		   r->benchmark->name, d,
           r->counter->name, d,
		   r->iterations, d,
		   r->events, d,
           1.0f * (double)(r->events) / (double)(r->iterations));
    fflush(stdout);
  }
}

#endif
