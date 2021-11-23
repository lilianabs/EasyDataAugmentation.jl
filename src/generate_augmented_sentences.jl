function substitute_word(sentence, word)
    return replace(sentence, word => "")
end

function easy_data_augmentation(input_file)

    open(input_file) do f
        for (i, line) in enumerate(eachline(f))
            label, sentence = split(line, "\t")
            aug_sentences = augment_sentence(sentence)
            #println("Line $i: $label, $sentence")
            #augment sentence
        end
    end

    return input_file
end


function augment_sentence(sentence)
    words = split(sentence, " ")

    return []

end

function clean_text_sentence(sentence)

end