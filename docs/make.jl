using EasyDataAugmentationNLP
using Documenter

DocMeta.setdocmeta!(EasyDataAugmentationNLP, :DocTestSetup, :(using EasyDataAugmentationNLP); recursive=true)

makedocs(;
    modules=[EasyDataAugmentationNLP],
    authors="lilianabs <lilianabsmath@google.com> and contributors",
    repo="https://github.com/lilianabs/EasyDataAugmentationNLP.jl/blob/{commit}{path}#{line}",
    sitename="EasyDataAugmentationNLP.jl",
    format=Documenter.HTML(;
        prettyurls=get(ENV, "CI", "false") == "true",
        canonical="https://lilianabs.github.io/EasyDataAugmentationNLP.jl",
        assets=String[],
    ),
    pages=[
        "Home" => "index.md",
    ],
)

deploydocs(;
    repo="github.com/lilianabs/EasyDataAugmentationNLP.jl",
    devbranch="main",
)
