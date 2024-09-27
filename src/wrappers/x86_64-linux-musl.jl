# Autogenerated wrapper script for JSON_C_jll for x86_64-linux-musl
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
