def progress_bar(current, total, bar_length=30):
    percent = float(current) * 100 / total
    hashes = "#" * int(percent/100 * bar_length)
    spaces = "." * (bar_length - len(hashes))

    print("[%s%s]" % (hashes, spaces))

