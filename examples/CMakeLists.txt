set(SANITIZER address leak thread memory undefined)

file(GLOB TEST_CPP_SOURCES ${CMAKE_CURRENT_SOURCE_DIR}/*.cpp)
foreach(testfile ${TEST_CPP_SOURCES})
    file(RELATIVE_PATH filename ${CMAKE_CURRENT_SOURCE_DIR} ${testfile})
    string(REPLACE ".cpp" "" file ${filename})
    add_executable(${file} ${testfile})
    target_link_libraries(${file} ${LINK_FLAGS})


    # sanitizer
    foreach(sanitizer ${SANITIZER})
        add_executable(${file}_${sanitizer} ${testfile})
        target_compile_options(${file}_${sanitizer} PUBLIC -fsanitize=${sanitizer})
        target_link_libraries(${file}_${sanitizer} ${LINK_FLAGS} -fsanitize=${sanitizer})
    endforeach(sanitizer ${SANITIZER})
endforeach(testfile ${TEST_CPP_SOURCES})

file(GLOB TEST_C_SOURCES ${CMAKE_CURRENT_SOURCE_DIR}/*.c)
foreach(testfile ${TEST_C_SOURCES})
    file(RELATIVE_PATH filename ${CMAKE_CURRENT_SOURCE_DIR} ${testfile})
    string(REPLACE ".c" "" file ${filename})
    add_executable(${file} ${testfile})
    target_link_libraries(${file}  ${LINK_FLAGS})


    foreach(sanitizer ${SANITIZER})
        add_executable(${file}_${sanitizer} ${testfile})
        target_compile_options(${file}_${sanitizer} PUBLIC -fsanitize=${sanitizer})
        target_link_libraries(${file}_${sanitizer} ${LINK_FLAGS}  -fsanitize=${sanitizer})
    endforeach(sanitizer ${SANITIZER})
endforeach(testfile ${TEST_C_SOURCES})