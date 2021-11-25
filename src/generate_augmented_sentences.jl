using DelimitedFiles

function substitute_word(sentence, word)
    return replace(sentence, word => "")
end

function easy_data_augmentation(input_file, output_file)

    f = open(input_file)
    lines = readlines(f)

    augmented_sentences = String[]

    # for each line in the input file, we generate agumented sentences
    for line in lines
        label, sentence = split(line, "\t")
        println("$label $sentence")
        push!(augmented_sentences, sentence)
        
     end

    writedlm(output_file, augmented_sentences)

    return input_file
end


function augment_sentence(sentence)
    words = split(sentence, " ")

    return []

end

function clean_text_sentence(sentence)

end