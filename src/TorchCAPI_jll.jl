# Use baremodule to shave off a few KB from the serialized `.ji` file
baremodule TorchCAPI_jll
using Base
using Base: UUID
using LazyArtifacts
Base.include(@__MODULE__, joinpath("..", ".pkg", "platform_augmentation.jl"))
import JLLWrappers

JLLWrappers.@generate_main_file_header("TorchCAPI")
JLLWrappers.@generate_main_file("TorchCAPI", UUID("dc5d5603-8d5e-5430-85a9-2783500f9f77"))
end  # module TorchCAPI_jll
