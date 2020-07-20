# This file was generated, do not modify it. # hide
# size of dataframe = size(df)
# set number of rows to nrows and number of columns to ncols
println("(nrows, ncols) = $(size(df))")
nrows, ncols = size(df)

# use nested for loop to get information from dataframe by row and column
for row in 1:nrows
  for col in 1:ncols
	println("value for row $row and col $col is $(df[row,col])")
  end
end