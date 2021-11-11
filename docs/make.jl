using EasyDataAugmentation
using Documenter

DocMeta.setdocmeta!(EasyDataAugmentation, :DocTestSetup, :(using EasyDataAugmentation); recursive=true)

makedocs(;
    modules=[EasyDataAugmentation],
    authors="lilianabs <lilianabsmath@google.com> and contributors",
    repo="https://github.com/lilianabs/EasyDataAugmentation.jl/blob/{commit}{path}#{line}",
    sitename="EasyDataAugmentation.jl",
    format=Documenter.HTML(;
        prettyurls=get(ENV, "CI", "false") == "true",
        canonical="https://lilianabs.github.io/EasyDataAugmentation.jl",
        assets=String[],
    ),
    pages=[
        "Home" => "index.md",
    ],
)

deploydocs(;
    repo="github.com/lilianabs/EasyDataAugmentation.jl",
    devbranch="main",
)
