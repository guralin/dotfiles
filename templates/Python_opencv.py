#!/usr/bin/env python
# -*- coding: utf-8 -*-

import cv2
import numpy as np

try:
    img = cv2.imread('lena.png')
    if img is None:
        print("ファイルを読み込めません")
        import sys
        sys.exit()


except:
    import sys
    print("Error:",sys.exc_info()[0])
    print(sys.exc_info()[1])
    import traceback
    print(traceback.format_tb(sys.exc_info()[2]))
