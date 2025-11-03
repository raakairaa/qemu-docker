#!/usr/bin/env python3
import time
import string
import argparse
import sys
import signal

def main(file_name: str, delay: float) -> None:
    def _stop(signum, frame):
        print("\ndihentikan.")
        sys.exit(0)

    signal.signal(signal.SIGINT, _stop)
    signal.signal(signal.SIGTERM, _stop)

    with open(file_name, "a", encoding="utf-8") as f:
        while True:
            for ch in string.ascii_lowercase:
                f.write(ch + "\n")
                f.flush()
                print(f"menulis: {ch}")
                time.sleep(delay)

if __name__ == "__main__":
    parser = argparse.ArgumentParser(description="Menulis huruf a-z ke file secara berulang.")
    parser.add_argument("--file", "-f", default="auto-alive.txt", help="Nama file keluaran (default: auto-alive.txt)")
    parser.add_argument("--delay", "-d", type=float, default=60.0, help="Delay (detik) antara penulisan huruf (default: 60)")
    args = parser.parse_args()

    try:
        main(args.file, args.delay)
    except KeyboardInterrupt:
        print("\ndihentikan.")
        sys.exit(0)
