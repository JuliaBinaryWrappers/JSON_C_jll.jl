# Autogenerated wrapper script for JSON_C_jll for i686-w64-mingw32
export libjson_c

JLLWrappers.@generate_wrapper_header("JSON_C")
JLLWrappers.@declare_library_product(libjson_c, "libjson-c.dll")
function __init__()
    JLLWrappers.@generate_init_header()
    JLLWrappers.@init_library_product(
        libjson_c,
        "bin\\libjson-c.dll",
        RTLD_LAZY | RTLD_DEEPBIND,
    )

    JLLWrappers.@generate_init_footer()
end  # __init__()
