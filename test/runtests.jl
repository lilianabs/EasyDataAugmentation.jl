using EasyDataAugmentation
using Test

@testset "EasyDataAugmentation.jl" begin
    sentence = "Hello world!"
    word = "world"
    @test EasyDataAugmentation.substitute_word(sentence, word) == "Hello !"

    input_file = "../data/sst2_train_500.txt"
    output_file = "../data/output.txt"
    @test EasyDataAugmentation.easy_data_augmentation(input_file, output_file) == output_file
    @test isfile(output_file)

    sentence = "Try' cleanInNG This` SENTENCE"
    clean_sentence = "try cleaninng this sentence"
    @test EasyDataAugmentation.clean_text_sentence(sentence) == clean_sentence

    sentence = "Try' cleanInNG This`            SENTENCE"
    clean_sentence = "try cleaninng this sentence"
    @test EasyDataAugmentation.clean_text_sentence(sentence) == clean_sentence

end
