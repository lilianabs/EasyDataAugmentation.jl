function substitute_word(sentence, word)
    return replace(sentence, word => "")
end

function easy_data_augmentation(input_file)

    open(input_file) do f
        for (i, line) in enumerate(eachline(f))
            label, text = split(line, "\t")
            tokens = split(text, " ")
            println("Line $i: $label, $text, $tokens")
        end
    end

    return input_file
end
