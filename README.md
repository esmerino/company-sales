CSV.foreach(ActiveStorage::Blob.service.send(:path_for, TransactionFile.last.file.key), h
eaders: true, col_sep:"\t"){|a| p a["purchaser name"]}