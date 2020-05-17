from systemd import journal

journal_stream = journal.Reader().this_boot().add_match(_SYSTEMD_UNIT="minecraft").seek_tail() 

print(journal_stream)

