.class public Lorg/apache/commons/compress/compressors/pack200/Pack200Utils;
.super Ljava/lang/Object;
.source "Pack200Utils.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static normalize(Ljava/io/File;)V
    .locals 1
    .param p0, "jar"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 60
    const/4 v0, 0x0

    invoke-static {p0, p0, v0}, Lorg/apache/commons/compress/compressors/pack200/Pack200Utils;->normalize(Ljava/io/File;Ljava/io/File;Ljava/util/Map;)V

    .line 61
    return-void
.end method

.method public static normalize(Ljava/io/File;Ljava/io/File;)V
    .locals 1
    .param p0, "from"    # Ljava/io/File;
    .param p1, "to"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 106
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lorg/apache/commons/compress/compressors/pack200/Pack200Utils;->normalize(Ljava/io/File;Ljava/io/File;Ljava/util/Map;)V

    .line 107
    return-void
.end method

.method public static normalize(Ljava/io/File;Ljava/io/File;Ljava/util/Map;)V
    .locals 7
    .param p0, "from"    # Ljava/io/File;
    .param p1, "to"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/io/File;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 130
    .local p2, "props":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez p2, :cond_0

    .line 131
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    move-object p2, v0

    .line 133
    :cond_0
    const-string v0, "pack.segment.limit"

    const-string v1, "-1"

    invoke-interface {p2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    const-string v0, "commons-compress"

    const-string v1, "pack200normalize"

    invoke-static {v0, v1}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 135
    .local v0, "f":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->deleteOnExit()V

    .line 137
    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 138
    .local v1, "os":Ljava/io/OutputStream;
    const/4 v2, 0x0

    .line 140
    .local v2, "j":Ljava/util/jar/JarFile;
    :try_start_1
    invoke-static {}, Ljava/util/jar/Pack200;->newPacker()Ljava/util/jar/Pack200$Packer;

    move-result-object v3

    .line 141
    .local v3, "p":Ljava/util/jar/Pack200$Packer;
    invoke-interface {v3}, Ljava/util/jar/Pack200$Packer;->properties()Ljava/util/SortedMap;

    move-result-object v4

    invoke-interface {v4, p2}, Ljava/util/SortedMap;->putAll(Ljava/util/Map;)V

    .line 142
    new-instance v4, Ljava/util/jar/JarFile;

    invoke-direct {v4, p0}, Ljava/util/jar/JarFile;-><init>(Ljava/io/File;)V

    move-object v2, v4

    invoke-interface {v3, v4, v1}, Ljava/util/jar/Pack200$Packer;->pack(Ljava/util/jar/JarFile;Ljava/io/OutputStream;)V

    .line 143
    const/4 v2, 0x0

    .line 144
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    .line 145
    const/4 v1, 0x0

    .line 147
    invoke-static {}, Ljava/util/jar/Pack200;->newUnpacker()Ljava/util/jar/Pack200$Unpacker;

    move-result-object v4

    .line 148
    .local v4, "u":Ljava/util/jar/Pack200$Unpacker;
    new-instance v5, Ljava/util/jar/JarOutputStream;

    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v5, v6}, Ljava/util/jar/JarOutputStream;-><init>(Ljava/io/OutputStream;)V

    move-object v1, v5

    .line 149
    move-object v5, v1

    check-cast v5, Ljava/util/jar/JarOutputStream;

    invoke-interface {v4, v0, v5}, Ljava/util/jar/Pack200$Unpacker;->unpack(Ljava/io/File;Ljava/util/jar/JarOutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 151
    .end local v3    # "p":Ljava/util/jar/Pack200$Packer;
    .end local v4    # "u":Ljava/util/jar/Pack200$Unpacker;
    if-eqz v2, :cond_1

    .line 152
    :try_start_2
    invoke-virtual {v2}, Ljava/util/jar/JarFile;->close()V

    .line 154
    :cond_1
    nop

    .line 155
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 159
    .end local v1    # "os":Ljava/io/OutputStream;
    .end local v2    # "j":Ljava/util/jar/JarFile;
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 160
    nop

    .line 161
    return-void

    .line 151
    .restart local v1    # "os":Ljava/io/OutputStream;
    .restart local v2    # "j":Ljava/util/jar/JarFile;
    :catchall_0
    move-exception v3

    if-eqz v2, :cond_2

    .line 152
    :try_start_3
    invoke-virtual {v2}, Ljava/util/jar/JarFile;->close()V

    .line 154
    :cond_2
    if-eqz v1, :cond_3

    .line 155
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    :cond_3
    nop

    .end local v0    # "f":Ljava/io/File;
    .end local p0    # "from":Ljava/io/File;
    .end local p1    # "to":Ljava/io/File;
    .end local p2    # "props":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 159
    .end local v1    # "os":Ljava/io/OutputStream;
    .end local v2    # "j":Ljava/util/jar/JarFile;
    .restart local v0    # "f":Ljava/io/File;
    .restart local p0    # "from":Ljava/io/File;
    .restart local p1    # "to":Ljava/io/File;
    .restart local p2    # "props":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :catchall_1
    move-exception v1

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    throw v1
.end method

.method public static normalize(Ljava/io/File;Ljava/util/Map;)V
    .locals 0
    .param p0, "jar"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 81
    .local p1, "props":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {p0, p0, p1}, Lorg/apache/commons/compress/compressors/pack200/Pack200Utils;->normalize(Ljava/io/File;Ljava/io/File;Ljava/util/Map;)V

    .line 82
    return-void
.end method
