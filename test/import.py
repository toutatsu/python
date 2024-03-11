# .pyの場合
import os
import sys
sys.path.append(os.path.join(os.path.dirname(__file__), '実行ファイルからの相対path'))


# .ipynbの場合
import os
import sys
from pathlib import Path
sys.path.append(os.path.join(Path().resolve(), '実行ファイルからの相対path'))
