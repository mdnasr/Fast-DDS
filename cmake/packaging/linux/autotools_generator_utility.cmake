macro(generate_autotools_generator_script)
    get_property(${PROJECT_NAME}_SOURCES GLOBAL PROPERTY ${PROJECT_NAME}_SOURCES_PROPERTY)
    get_property(${PROJECT_NAME}_PUBLIC_HEADERS_DIRECTORIES GLOBAL PROPERTY ${PROJECT_NAME}_PUBLIC_HEADERS_DIRECTORIES_PROPERTY)
    get_property(${PROJECT_NAME}_PUBLIC_HEADERS_FILES GLOBAL PROPERTY ${PROJECT_NAME}_PUBLIC_HEADERS_FILES_PROPERTY)
    configure_file(${PROJECT_SOURCE_DIR}/cmake/packaging/linux/autotools_generator.cmake.in ${PROJECT_BINARY_DIR}/cmake/packaging/linux/autotools_generator.cmake.in @ONLY)
    configure_file(${PROJECT_BINARY_DIR}/cmake/packaging/linux/autotools_generator.cmake.in ${PROJECT_BINARY_DIR}/cmake/packaging/linux/autotools_generator.cmake @ONLY)
endmacro()

