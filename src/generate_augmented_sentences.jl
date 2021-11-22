function substitute_word(sentence, word)
    return replace(sentence, word => "")
end

function easy_data_augmentation(input_file)

    open(input_file) do f
        for (i, line) in enumerate(eachline(f))
            print("Line $i: $line \n")
        end
    end

    return input_file
end
