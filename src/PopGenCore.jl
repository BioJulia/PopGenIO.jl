__precompile__()

module PopGenCore

using CSV, DataFrames, NaturalSort, PooledArrays, StaticArrays
using CodecZlib, VariantCallFormat
using StatsBase: countmap
using Random: shuffle, shuffle!

include("PopData.jl")
## Utilities
include("Utils/GeneralUtils.jl")
include("Utils/GenotypeUtils.jl")
include("Utils/ioUtils.jl")
include("Utils/MathUtils.jl")
include("Utils/MissingUtils.jl")
##
include("Conditionals.jl")
include("Permutations.jl")
include("Iterators.jl")
include("Manipulate.jl")
## File IO
include("io/Delimited.jl")
include("io/Genepop.jl")
include("io/Structure.jl")
include("io/VariantCall.jl")
include("io/Read.jl")
##
include("Datasets.jl")

# precompile some file IO
include("precompile/precompile.jl") ;

end
