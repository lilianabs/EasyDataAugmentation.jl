using DelimitedFiles

function substitute_word(sentence, word)
    return replace(sentence, word => "")
end

function easy_data_augmentation(input_file, output_file)

    f = open(input_file)
    lines = readlines(f)

    augmented_sentences = []

    # for each line in the input file, we generate agumented sentences
    for line in lines
        label, sentence = split(line, "\t")
        #println("$label $sentence")
        aug_sentences = augment_sentence(sentence)
        for aug_sentence in aug_sentences 
            push!(augmented_sentences, [label, aug_sentence])
        end
     end

    writedlm(output_file, augmented_sentences)

    return output_file
end


function augment_sentence(sentence)

    sentence = clean_text_sentence(sentence)
    words = split(sentence, " ")

    return ["test1", "test2"]

end

function clean_text_sentence(sentence)

    sentence = lowercase.(sentence)
    sentence = replace.(sentence, ['’',''', '`'] => "")

    # remove extra spaces
    sentence = replace.(sentence, r" +" => " ")
    return sentence
end