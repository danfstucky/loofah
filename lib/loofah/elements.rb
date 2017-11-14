require 'set'

module Loofah
  module Elements
    # Block elements in HTML4 & 5
    STRICT_BLOCK_LEVEL = Set.new %w[address article aside blockquote canvas center
      details dir div dl fieldset figcaption figure form footer header
      h1 h2 h3 h4 h5 h6 hr isindex main menu nav noframes noscript ol p pre
      section summary table ul]

    # The following elements may also be considered block-level elements since they may contain block-level elements
    LOOSE_BLOCK_LEVEL = Set.new %w[dd dt frameset li tbody td tfoot th thead tr]

    BLOCK_LEVEL = STRICT_BLOCK_LEVEL + LOOSE_BLOCK_LEVEL
  end

  ::Loofah::MetaHelpers.add_downcased_set_members_to_all_set_constants ::Loofah::Elements
end
