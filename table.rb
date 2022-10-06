class Table
    @@table = [
        [9, 85, 92, 20],
        [68, 25, 80, 55],
        [43, 96, 71, 73],
        [43, 19, 20, 87],
        [95, 66, 73, 62]
    ]

    def self.get_table_data
        @@table
    end

    def self.genarate_table
        add_line_sum
        column_sum
        @@table
    end

    # mapで行を回して、合計値を足す
    def self.add_line_sum
        @@table = @@table.map { |row| row + [row.sum] }
    end
    
    # transposeで行&列を入れ替えて合計し、元に戻す
    def self.column_sum
        @@table = @@table.transpose.map { |col| col + [col.sum] }.transpose
    end
end

# pp Table.genarate_table