using EasyDataAugmentationNLP
using Test

@testset "EasyDataAugmentationNLP.jl" begin
    sentence = "Hello world!"
    word = "world"
    @test EasyDataAugmentationNLP.substitute_word(sentence, word) == "Hello !"
end
