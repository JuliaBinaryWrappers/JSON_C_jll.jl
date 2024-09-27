# Autogenerated wrapper script for JSON_C_jll for aarch64-unknown-freebsd
export libjson_c

JLLWrappers.@generate_wrapper_header("JSON_C")
JLLWrappers.@declare_library_product(libjson_c, "libjson-c.so.5")
function __init__()
    JLLWrappers.@generate_init_header()
    JLLWrappers.@init_library_product(
        libjson_c,
        "lib/libjson-c.so",
        RTLD_LAZY | RTLD_DEEPBIND,
    )

    JLLWrappers.@generate_init_footer()
end  # __init__()
