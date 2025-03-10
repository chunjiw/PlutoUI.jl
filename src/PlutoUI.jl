module PlutoUI

import Base: show, get
import Markdown: htmlesc, withtag

using Reexport

const PKG_ROOT_DIR = normpath(joinpath(@__DIR__, ".."))

@reexport module BuiltinsNotebook
    include("./Builtins.jl")
end
include("./Resource.jl")
include("./RangeSlider.jl")
include("./DisplayTricks.jl")

@reexport module TerminalNotebook
    include("./TerminalNotebook.jl")
end
@reexport module MultiCheckBoxNotebook
    include("./MultiCheckBox.jl")
end
@reexport module TableOfContentsNotebook
    include("./TableOfContents.jl")
end
@reexport module ClockNotebook
    include("./Clock.jl")
end
@reexport module ScrubbableNotebook
    include("./Scrubbable.jl")
end

# this is a submodule
module ExperimentalLayout
    include("./Layout.jl")
end

end
