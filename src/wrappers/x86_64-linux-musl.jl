# Autogenerated wrapper script for JSON_C_jll for x86_64-linux-musl
export libjson_c

## Global variables
PATH = ""
LIBPATH = ""
LIBPATH_env = "LD_LIBRARY_PATH"
LIBPATH_default = ""

# Relative path to `libjson_c`
const libjson_c_splitpath = ["lib", "libjson-c.so"]

# This will be filled out by __init__() for all products, as it must be done at runtime
libjson_c_path = ""

# libjson_c-specific global declaration
# This will be filled out by __init__()
libjson_c_handle = C_NULL

# This must be `const` so that we can use it with `ccall()`
const libjson_c = "libjson-c.so.5"


"""
Open all libraries
"""
function __init__()
    global artifact_dir = abspath(artifact"JSON_C")

    # Initialize PATH and LIBPATH environment variable listings
    global PATH_list, LIBPATH_list
    global libjson_c_path = normpath(joinpath(artifact_dir, libjson_c_splitpath...))

    # Manually `dlopen()` this right now so that future invocations
    # of `ccall` with its `SONAME` will find this path immediately.
    global libjson_c_handle = dlopen(libjson_c_path)
    push!(LIBPATH_list, dirname(libjson_c_path))

    # Filter out duplicate and empty entries in our PATH and LIBPATH entries
    filter!(!isempty, unique!(PATH_list))
    filter!(!isempty, unique!(LIBPATH_list))
    global PATH = join(PATH_list, ':')
    global LIBPATH = join(vcat(LIBPATH_list, [joinpath(Sys.BINDIR, Base.LIBDIR, "julia"), joinpath(Sys.BINDIR, Base.LIBDIR)]), ':')

    
end  # __init__()

