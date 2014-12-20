class RenderTOC
  def initialize(items)
    @items = items
    @text = ""
    @bs = BootstrapMarkup.new
    @col_hdrs = ["Title", "Year", "Program"]
    @col_selectors = [:title, :year, :program]
  end

  def generate_headers
    @bs.table_begin
    @bs.headers_begin
    @col_hdrs.each do |col_hdr|
      @bs.header_begin
      @bs.header_content(col_hdr)
      @bs.header_end
    end
    @bs.headers_end
  end

  def generate_rows
    @items.each do |i|
      if include_in_body?(i)
        generate_row(i)
      end
    end
  end

  def include_in_body?(i)
    i[:type] == "project"
  end

  def generate_row(i)
    @bs.row_begin
    @col_selectors.each do |sel|
      generate_cell(i,sel)
    end
    @bs.row_end
  end

  def generate_cell(i,sel)
    @bs.cell_begin
    @bs.cell_content(link_to(i[sel], i))
    @bs.cell_end
  end

  def generate_footers
    @bs.table_end
  end

  def generate_html
    generate_headers
    generate_rows
    generate_footers
    @bs.render
  end
end
