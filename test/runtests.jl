using EasyDataAugmentation
using Test

@testset "EasyDataAugmentation.jl" begin
    sentence = "Hello world!"
    word = "world"
    @test EasyDataAugmentation.substitute_word(sentence, word) == "Hello !"
end
