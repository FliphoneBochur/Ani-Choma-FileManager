.class public Lcom/github/junrar/testutil/ExtractArchive;
.super Ljava/lang/Object;
.source "ExtractArchive.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static extractArchive(Ljava/io/File;Ljava/io/File;)V
    .locals 2
    .param p0, "archive"    # Ljava/io/File;
    .param p1, "destination"    # Ljava/io/File;

    .line 39
    new-instance v0, Lcom/github/junrar/extract/ExtractArchive;

    invoke-direct {v0}, Lcom/github/junrar/extract/ExtractArchive;-><init>()V

    .line 40
    .local v0, "extractArchive":Lcom/github/junrar/extract/ExtractArchive;
    const-class v1, Lcom/github/junrar/testutil/ExtractArchive;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/String;)Lorg/apache/commons/logging/Log;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/github/junrar/extract/ExtractArchive;->setLogger(Lorg/apache/commons/logging/Log;)V

    .line 41
    invoke-virtual {v0, p0, p1}, Lcom/github/junrar/extract/ExtractArchive;->extractArchive(Ljava/io/File;Ljava/io/File;)V

    .line 42
    return-void
.end method

.method public static extractArchive(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p0, "archive"    # Ljava/lang/String;
    .param p1, "destination"    # Ljava/lang/String;

    .line 24
    if-eqz p0, :cond_2

    if-eqz p1, :cond_2

    .line 27
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 28
    .local v0, "arch":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 31
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 32
    .local v1, "dest":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 35
    invoke-static {v0, v1}, Lcom/github/junrar/testutil/ExtractArchive;->extractArchive(Ljava/io/File;Ljava/io/File;)V

    .line 36
    return-void

    .line 33
    :cond_0
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "the destination must exist and point to a directory: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 29
    .end local v1    # "dest":Ljava/io/File;
    :cond_1
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "the archive does not exit: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 25
    .end local v0    # "arch":Ljava/io/File;
    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "archive and destination must me set"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static main([Ljava/lang/String;)V
    .locals 2
    .param p0, "args"    # [Ljava/lang/String;

    .line 16
    array-length v0, p0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 17
    const/4 v0, 0x0

    aget-object v0, p0, v0

    const/4 v1, 0x1

    aget-object v1, p0, v1

    invoke-static {v0, v1}, Lcom/github/junrar/testutil/ExtractArchive;->extractArchive(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 19
    :cond_0
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "usage: java -jar extractArchive.jar <thearchive> <the destination directory>"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 21
    :goto_0
    return-void
.end method
