# Use baremodule to shave off a few KB from the serialized `.ji` file
baremodule JSON_C_jll
using Base
using Base: UUID
import JLLWrappers

JLLWrappers.@generate_main_file_header("JSON_C")
JLLWrappers.@generate_main_file("JSON_C", UUID("9cdfc4e7-e793-5089-b6f7-569a57a60f0a"))
end  # module JSON_C_jll
