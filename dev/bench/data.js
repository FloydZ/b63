window.BENCHMARK_DATA = {
  "lastUpdate": 1669054358947,
  "repoUrl": "https://github.com/FloydZ/b63",
  "entries": {
    "b63": [
      {
        "commit": {
          "author": {
            "email": "floyd.zweydinger@rub.de",
            "name": "Floyd Zweydinger"
          },
          "committer": {
            "email": "floyd.zweydinger@rub.de",
            "name": "Floyd Zweydinger"
          },
          "distinct": true,
          "id": "bbbee4b8924b391be0a45b2f2cc938e7ec952af7",
          "message": "changed tool",
          "timestamp": "2022-11-20T18:43:47+01:00",
          "tree_id": "b042b7eff604df5414d69fabd67a2b8bdb1b6808",
          "url": "https://github.com/FloydZ/b63/commit/bbbee4b8924b391be0a45b2f2cc938e7ec952af7"
        },
        "date": 1668966257987,
        "tool": "customSmallerIsBetter",
        "benches": [
          {
            "name": "time",
            "value": 21.099761,
            "unit": "events/s",
            "extra": "basic"
          },
          {
            "name": "time",
            "value": 10.446008,
            "unit": "events/s",
            "extra": "basic_half (-50.492294)42"
          }
        ]
      }
    ],
    "b63-baseline": [
      {
        "commit": {
          "author": {
            "email": "floyd.zweydinger@rub.de",
            "name": "Floyd Zweydinger"
          },
          "committer": {
            "email": "floyd.zweydinger@rub.de",
            "name": "Floyd Zweydinger"
          },
          "distinct": true,
          "id": "8938195a86bd079c208486d507b41afe90658d85",
          "message": "removed json",
          "timestamp": "2022-11-21T19:11:55+01:00",
          "tree_id": "478b195cad1702cdfbb6cabc693d2dffc1d1ac9b",
          "url": "https://github.com/FloydZ/b63/commit/8938195a86bd079c208486d507b41afe90658d85"
        },
        "date": 1669054357503,
        "tool": "customSmallerIsBetter",
        "benches": [
          {
            "name": "basic_time",
            "value": 20.567456,
            "unit": "events/s",
            "extra": "basic"
          },
          {
            "name": "basic_half_time",
            "value": 10.652201,
            "unit": "events/s",
            "extra": "basic_half (-48.208468)42"
          }
        ]
      }
    ]
  }
}