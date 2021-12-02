using DelimitedFiles
using WordNet

const special_characters = ['[', '!', '&', ''',
                            '(', ')', '*', ',', 
                            '.', '/', ':', '$',
                            ';', '?', '@', '[',
                            '\\', ']', '^', '_', 
                            '`', '{', '|', '}',
                            '·'
                            ]

const spaces = ['-', '\t', '\n']

const alphanumeric_characters = r"[^A-Za-z0-9 ]+"

function substitute_word(sentence, word)
    return replace(sentence, word => "")
end

function easy_data_augmentation(input_file, output_file, alpha_sr=0.1, 
    alpha_ri=0.1, alpha_rs=0.1, p_rd=0.1, num_aug=9)

    f = open(input_file)
    lines = readlines(f)

    augmented_sentences = []
    num_aug_sentences_per_technique = floor(num_aug/4)+1

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
    
    return words

end

function clean_text_sentence(sentence)

    sentence = lowercase.(sentence)

    # delete special characters
    sentence = replace.(sentence, special_characters => "")
    # add spaces for tab and return
    sentence = replace.(sentence, spaces => " ")
    # keep alphanumeric characters
    #sentence = match.(alphanumeric_characters, sentence)

    # remove extra white spaces
    sentence = replace.(sentence, r" +" => " ")

    # remove trailing and ending white space
    sentence = lstrip.(sentence)
    sentence = rstrip.(sentence)

    return sentence
end

function get_synonyms(word)
    db = DB()
    lemma = db['a', "glad"]
    ss = synsets(db, lemma)

    return ss
end 