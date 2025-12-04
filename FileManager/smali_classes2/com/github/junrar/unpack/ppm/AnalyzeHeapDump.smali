.class public Lcom/github/junrar/unpack/ppm/AnalyzeHeapDump;
.super Ljava/lang/Object;
.source "AnalyzeHeapDump.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 21
    .param p0, "argv"    # [Ljava/lang/String;

    .line 21
    new-instance v0, Ljava/io/File;

    const-string v1, "P:\\test\\heapdumpc"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v1, v0

    .line 22
    .local v1, "cfile":Ljava/io/File;
    new-instance v0, Ljava/io/File;

    const-string v2, "P:\\test\\heapdumpj"

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v2, v0

    .line 23
    .local v2, "jfile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    const-string v3, "File not found: "

    if-nez v0, :cond_0

    .line 24
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 25
    return-void

    .line 27
    :cond_0
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    .line 28
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 29
    return-void

    .line 31
    :cond_1
    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v3

    .line 32
    .local v3, "clen":J
    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v5

    .line 33
    .local v5, "jlen":J
    cmp-long v0, v3, v5

    if-eqz v0, :cond_2

    .line 34
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v7, "File size mismatch"

    invoke-virtual {v0, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 35
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "clen = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 36
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "jlen = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 39
    :cond_2
    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v7

    .line 40
    .local v7, "len":J
    const/4 v9, 0x0

    .line 41
    .local v9, "cin":Ljava/io/InputStream;
    const/4 v10, 0x0

    .line 42
    .local v10, "jin":Ljava/io/InputStream;
    const/high16 v11, 0x40000

    .line 44
    .local v11, "bufferLen":I
    :try_start_0
    new-instance v0, Ljava/io/BufferedInputStream;

    new-instance v12, Ljava/io/FileInputStream;

    invoke-direct {v12, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v12, v11}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    move-object v9, v0

    .line 46
    new-instance v0, Ljava/io/BufferedInputStream;

    new-instance v12, Ljava/io/FileInputStream;

    invoke-direct {v12, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v12, v11}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v10, v0

    .line 48
    const/4 v0, 0x1

    .line 49
    .local v0, "matching":Z
    const/4 v12, 0x0

    .line 50
    .local v12, "mismatchFound":Z
    const-wide/16 v13, 0x0

    .line 51
    .local v13, "startOff":J
    const-wide/16 v15, 0x0

    move-wide/from16 v19, v15

    move-object v15, v1

    move-object/from16 v16, v2

    move-wide/from16 v1, v19

    .line 52
    .end local v2    # "jfile":Ljava/io/File;
    .local v1, "off":J
    .local v15, "cfile":Ljava/io/File;
    .local v16, "jfile":Ljava/io/File;
    :goto_0
    cmp-long v17, v1, v7

    if-gez v17, :cond_5

    .line 53
    move-wide/from16 v17, v3

    .end local v3    # "clen":J
    .local v17, "clen":J
    :try_start_1
    invoke-virtual {v9}, Ljava/io/InputStream;->read()I

    move-result v3

    invoke-virtual {v10}, Ljava/io/InputStream;->read()I

    move-result v4

    if-eq v3, v4, :cond_3

    .line 54
    if-eqz v0, :cond_4

    .line 55
    move-wide v3, v1

    .line 56
    .end local v13    # "startOff":J
    .local v3, "startOff":J
    const/4 v0, 0x0

    .line 57
    const/4 v12, 0x1

    move-wide v13, v3

    goto :goto_1

    .line 61
    .end local v3    # "startOff":J
    .restart local v13    # "startOff":J
    :cond_3
    if-nez v0, :cond_4

    .line 62
    invoke-static {v13, v14, v1, v2}, Lcom/github/junrar/unpack/ppm/AnalyzeHeapDump;->printMismatch(JJ)V

    .line 63
    const/4 v0, 0x1

    .line 66
    :cond_4
    :goto_1
    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    move-wide/from16 v3, v17

    goto :goto_0

    .line 76
    .end local v0    # "matching":Z
    .end local v1    # "off":J
    .end local v12    # "mismatchFound":Z
    .end local v13    # "startOff":J
    :catch_0
    move-exception v0

    goto :goto_3

    .line 68
    .end local v17    # "clen":J
    .restart local v0    # "matching":Z
    .restart local v1    # "off":J
    .local v3, "clen":J
    .restart local v12    # "mismatchFound":Z
    .restart local v13    # "startOff":J
    :cond_5
    move-wide/from16 v17, v3

    .end local v3    # "clen":J
    .restart local v17    # "clen":J
    if-nez v0, :cond_6

    .line 69
    invoke-static {v13, v14, v1, v2}, Lcom/github/junrar/unpack/ppm/AnalyzeHeapDump;->printMismatch(JJ)V

    .line 71
    :cond_6
    if-nez v12, :cond_7

    .line 72
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v4, "Files are identical"

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 74
    :cond_7
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v4, "Done"

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 81
    .end local v0    # "matching":Z
    .end local v1    # "off":J
    .end local v12    # "mismatchFound":Z
    .end local v13    # "startOff":J
    :try_start_2
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V

    .line 82
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 85
    :goto_2
    goto :goto_4

    .line 83
    :catch_1
    move-exception v0

    .line 84
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 86
    .end local v0    # "e":Ljava/io/IOException;
    goto :goto_4

    .line 80
    .end local v15    # "cfile":Ljava/io/File;
    .end local v16    # "jfile":Ljava/io/File;
    .end local v17    # "clen":J
    .local v1, "cfile":Ljava/io/File;
    .restart local v2    # "jfile":Ljava/io/File;
    .restart local v3    # "clen":J
    :catchall_0
    move-exception v0

    move-object v15, v1

    move-object/from16 v16, v2

    move-wide/from16 v17, v3

    move-object v1, v0

    .end local v1    # "cfile":Ljava/io/File;
    .end local v2    # "jfile":Ljava/io/File;
    .end local v3    # "clen":J
    .restart local v15    # "cfile":Ljava/io/File;
    .restart local v16    # "jfile":Ljava/io/File;
    .restart local v17    # "clen":J
    goto :goto_5

    .line 76
    .end local v15    # "cfile":Ljava/io/File;
    .end local v16    # "jfile":Ljava/io/File;
    .end local v17    # "clen":J
    .restart local v1    # "cfile":Ljava/io/File;
    .restart local v2    # "jfile":Ljava/io/File;
    .restart local v3    # "clen":J
    :catch_2
    move-exception v0

    move-object v15, v1

    move-object/from16 v16, v2

    move-wide/from16 v17, v3

    .line 77
    .end local v1    # "cfile":Ljava/io/File;
    .end local v2    # "jfile":Ljava/io/File;
    .end local v3    # "clen":J
    .restart local v0    # "e":Ljava/io/IOException;
    .restart local v15    # "cfile":Ljava/io/File;
    .restart local v16    # "jfile":Ljava/io/File;
    .restart local v17    # "clen":J
    :goto_3
    :try_start_3
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 81
    .end local v0    # "e":Ljava/io/IOException;
    :try_start_4
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V

    .line 82
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_2

    .line 87
    :goto_4
    return-void

    .line 80
    :catchall_1
    move-exception v0

    move-object v1, v0

    .line 81
    :goto_5
    :try_start_5
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V

    .line 82
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 85
    goto :goto_6

    .line 83
    :catch_3
    move-exception v0

    .line 84
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 85
    .end local v0    # "e":Ljava/io/IOException;
    :goto_6
    throw v1
.end method

.method private static printMismatch(JJ)V
    .locals 4
    .param p0, "startOff"    # J
    .param p2, "bytesRead"    # J

    .line 90
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Mismatch: off="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "(0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0, p1}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "), len="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long v2, p2, p0

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 93
    return-void
.end method
