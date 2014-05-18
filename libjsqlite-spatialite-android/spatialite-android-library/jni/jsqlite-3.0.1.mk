include $(CLEAR_VARS)
LOCAL_MODULE    := jsqlite
LOCAL_CFLAGS	:= -D__ANDROID__ \
 -DHAVE_SQLITE2=0 \
 -DHAVE_SQLITE3=1 \
 -DHAVE_SQLITE3_MALLOC=1 \
 -DHAVE_SQLITE3_PREPARE_V2=1 \
 -DHAVE_SQLITE3_OPEN_V2=1 \
 -DHAVE_SQLITE3_CLEAR_BINDINGS=1 \
 -DHAVE_SQLITE3_BIND_PARAMETER_COUNT=1 \
 -DHAVE_SQLITE3_BIND_PARAMETER_NAME=1 \
 -DHAVE_SQLITE3_BIND_PARAMETER_INDEX=1 \
 -DHAVE_SQLITE3_LOAD_EXTENSION=1 \
 -DCANT_PASS_VALIST_AS_CHARPTR=1 \
 -Dfdatasync=fsync \
 -DSQLITE_ENABLE_RTREE=1
LOCAL_LDLIBS	:= -llog
LOCAL_C_INCLUDES := \
 $(SPATIALITE_PATH)/headers/spatialite \
 $(JSQLITE_PATH)/native/
LOCAL_SRC_FILES := \
 $(JSQLITE_PATH)/native/sqlite_jni.c
LOCAL_STATIC_LIBRARIES := spatialite iconv proj geos
include $(BUILD_SHARED_LIBRARY)
