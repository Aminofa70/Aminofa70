using Documenter
using DocumenterVitepress

makedocs(;
    authors="Aminofa70 <amin.alibakhshi@upm.es> and contributors",
    sitename="Amin Alibakhshi",
    format=DocumenterVitepress.MarkdownVitepress(;
        repo="github.com/Aminofa70/Aminofa70",
        devbranch="main",
        devurl="dev",
    ),
    pages=[
        "Home" => "index.md",
        "Papers" => "papers.md",
    ]
)

DocumenterVitepress.deploydocs(;
    repo="github.com/Aminofa70/Aminofa70.git",
    target=joinpath(@__DIR__, "build"),
    branch="gh-pages",
    devbranch="main",
    push_preview=true,
)