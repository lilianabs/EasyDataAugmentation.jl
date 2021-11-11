using EasyDataAugmentation
using Test

@testset "EasyDataAugmentation.jl" begin
    sentence = "Hello world!"
    word = "world"
    @test EasyDataAugmentationNLP.substitute_word(sentence, word) == "Hello !"
end
