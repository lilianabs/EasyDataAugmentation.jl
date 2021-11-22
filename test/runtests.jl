using EasyDataAugmentation
using Test

@testset "EasyDataAugmentation.jl" begin
    sentence = "Hello world!"
    word = "world"
    @test EasyDataAugmentation.substitute_word(sentence, word) == "Hello !"

    input_file = "../data/sst2_train_500.txt"
    @test EasyDataAugmentation.easy_data_augmentation(input_file) == input_file
end
