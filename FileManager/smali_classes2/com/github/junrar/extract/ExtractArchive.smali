.class public Lcom/github/junrar/extract/ExtractArchive;
.super Ljava/lang/Object;
.source "ExtractArchive.java"


# instance fields
.field private logger:Lorg/apache/commons/logging/Log;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static createDirectory(Lcom/github/junrar/rarfile/FileHeader;Ljava/io/File;)V
    .locals 3
    .param p0, "fh"    # Lcom/github/junrar/rarfile/FileHeader;
    .param p1, "destination"    # Ljava/io/File;

    .line 132
    const/4 v0, 0x0

    .line 133
    .local v0, "f":Ljava/io/File;
    invoke-virtual {p0}, Lcom/github/junrar/rarfile/FileHeader;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/github/junrar/rarfile/FileHeader;->isUnicode()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 134
    new-instance v1, Ljava/io/File;

    invoke-virtual {p0}, Lcom/github/junrar/rarfile/FileHeader;->getFileNameW()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v0, v1

    .line 135
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    .line 136
    invoke-virtual {p0}, Lcom/github/junrar/rarfile/FileHeader;->getFileNameW()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/github/junrar/extract/ExtractArchive;->makeDirectory(Ljava/io/File;Ljava/lang/String;)V

    goto :goto_0

    .line 138
    :cond_0
    invoke-virtual {p0}, Lcom/github/junrar/rarfile/FileHeader;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/github/junrar/rarfile/FileHeader;->isUnicode()Z

    move-result v1

    if-nez v1, :cond_1

    .line 139
    new-instance v1, Ljava/io/File;

    invoke-virtual {p0}, Lcom/github/junrar/rarfile/FileHeader;->getFileNameString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v0, v1

    .line 140
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    .line 141
    invoke-virtual {p0}, Lcom/github/junrar/rarfile/FileHeader;->getFileNameString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/github/junrar/extract/ExtractArchive;->makeDirectory(Ljava/io/File;Ljava/lang/String;)V

    .line 144
    :cond_1
    :goto_0
    return-void
.end method

.method private createFile(Lcom/github/junrar/rarfile/FileHeader;Ljava/io/File;)Ljava/io/File;
    .locals 5
    .param p1, "fh"    # Lcom/github/junrar/rarfile/FileHeader;
    .param p2, "destination"    # Ljava/io/File;

    .line 89
    const/4 v0, 0x0

    .line 90
    .local v0, "f":Ljava/io/File;
    const/4 v1, 0x0

    .line 91
    .local v1, "name":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/github/junrar/rarfile/FileHeader;->isFileHeader()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Lcom/github/junrar/rarfile/FileHeader;->isUnicode()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 92
    invoke-virtual {p1}, Lcom/github/junrar/rarfile/FileHeader;->getFileNameW()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 94
    :cond_0
    invoke-virtual {p1}, Lcom/github/junrar/rarfile/FileHeader;->getFileNameString()Ljava/lang/String;

    move-result-object v1

    .line 96
    :goto_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p2, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v0, v2

    .line 97
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    .line 99
    :try_start_0
    invoke-static {p2, v1}, Lcom/github/junrar/extract/ExtractArchive;->makeFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    .line 102
    goto :goto_1

    .line 100
    :catch_0
    move-exception v2

    .line 101
    .local v2, "e":Ljava/io/IOException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "error creating the new file: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/github/junrar/extract/ExtractArchive;->logError(Ljava/lang/Exception;Ljava/lang/String;)V

    .line 104
    .end local v2    # "e":Ljava/io/IOException;
    :cond_1
    :goto_1
    return-object v0
.end method

.method private logError(Ljava/lang/Exception;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Exception;

    .line 85
    iget-object v0, p0, Lcom/github/junrar/extract/ExtractArchive;->logger:Lorg/apache/commons/logging/Log;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lorg/apache/commons/logging/Log;->error(Ljava/lang/Object;)V

    .line 86
    :cond_0
    return-void
.end method

.method private logError(Ljava/lang/Exception;Ljava/lang/String;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Exception;
    .param p2, "errorMessage"    # Ljava/lang/String;

    .line 81
    iget-object v0, p0, Lcom/github/junrar/extract/ExtractArchive;->logger:Lorg/apache/commons/logging/Log;

    if-eqz v0, :cond_0

    invoke-interface {v0, p2, p1}, Lorg/apache/commons/logging/Log;->error(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 82
    :cond_0
    return-void
.end method

.method private logInfo(Ljava/lang/String;)V
    .locals 1
    .param p1, "info"    # Ljava/lang/String;

    .line 77
    iget-object v0, p0, Lcom/github/junrar/extract/ExtractArchive;->logger:Lorg/apache/commons/logging/Log;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    .line 78
    :cond_0
    return-void
.end method

.method private logWarn(Ljava/lang/String;)V
    .locals 1
    .param p1, "warning"    # Ljava/lang/String;

    .line 73
    iget-object v0, p0, Lcom/github/junrar/extract/ExtractArchive;->logger:Lorg/apache/commons/logging/Log;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;)V

    .line 74
    :cond_0
    return-void
.end method

.method private static makeDirectory(Ljava/io/File;Ljava/lang/String;)V
    .locals 8
    .param p0, "destination"    # Ljava/io/File;
    .param p1, "fileName"    # Ljava/lang/String;

    .line 147
    const-string v0, "\\\\"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 148
    .local v0, "dirs":[Ljava/lang/String;
    if-nez v0, :cond_0

    .line 149
    return-void

    .line 151
    :cond_0
    const-string v1, ""

    .line 152
    .local v1, "path":Ljava/lang/String;
    move-object v2, v0

    .local v2, "arr$":[Ljava/lang/String;
    array-length v3, v2

    .local v3, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_0
    if-ge v4, v3, :cond_1

    aget-object v5, v2, v4

    .line 153
    .local v5, "dir":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v7, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 154
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->mkdir()Z

    .line 152
    .end local v5    # "dir":Ljava/lang/String;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 157
    .end local v2    # "arr$":[Ljava/lang/String;
    .end local v3    # "len$":I
    .end local v4    # "i$":I
    :cond_1
    return-void
.end method

.method private static makeFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;
    .locals 7
    .param p0, "destination"    # Ljava/io/File;
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 109
    const-string v0, "\\\\"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 110
    .local v0, "dirs":[Ljava/lang/String;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 111
    return-object v1

    .line 113
    :cond_0
    const-string v2, ""

    .line 114
    .local v2, "path":Ljava/lang/String;
    array-length v3, v0

    .line 115
    .local v3, "size":I
    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 116
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v1

    .line 117
    :cond_1
    if-le v3, v4, :cond_3

    .line 118
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v5, v0

    sub-int/2addr v5, v4

    if-ge v1, v5, :cond_2

    .line 119
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v6, v0, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 120
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, p0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->mkdir()Z

    .line 118
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 122
    .end local v1    # "i":I
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v5, v0

    sub-int/2addr v5, v4

    aget-object v4, v0, v5

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 123
    .end local v2    # "path":Ljava/lang/String;
    .local v1, "path":Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 124
    .local v2, "f":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z

    .line 125
    return-object v2

    .line 127
    .end local v1    # "path":Ljava/lang/String;
    .local v2, "path":Ljava/lang/String;
    :cond_3
    return-object v1
.end method


# virtual methods
.method public extractArchive(Ljava/io/File;Ljava/io/File;)V
    .locals 5
    .param p1, "archive"    # Ljava/io/File;
    .param p2, "destination"    # Ljava/io/File;

    .line 29
    const/4 v0, 0x0

    .line 31
    .local v0, "arch":Lcom/github/junrar/Archive;
    :try_start_0
    new-instance v1, Lcom/github/junrar/Archive;

    invoke-direct {v1, p1}, Lcom/github/junrar/Archive;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Lcom/github/junrar/exception/RarException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 36
    :goto_0
    goto :goto_1

    .line 34
    :catch_0
    move-exception v1

    .line 35
    .local v1, "e1":Ljava/io/IOException;
    invoke-direct {p0, v1}, Lcom/github/junrar/extract/ExtractArchive;->logError(Ljava/lang/Exception;)V

    goto :goto_1

    .line 32
    .end local v1    # "e1":Ljava/io/IOException;
    :catch_1
    move-exception v1

    .line 33
    .local v1, "e":Lcom/github/junrar/exception/RarException;
    invoke-direct {p0, v1}, Lcom/github/junrar/extract/ExtractArchive;->logError(Ljava/lang/Exception;)V

    .end local v1    # "e":Lcom/github/junrar/exception/RarException;
    goto :goto_0

    .line 37
    :goto_1
    if-eqz v0, :cond_4

    .line 38
    invoke-virtual {v0}, Lcom/github/junrar/Archive;->isEncrypted()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 39
    const-string v1, "archive is encrypted cannot extreact"

    invoke-direct {p0, v1}, Lcom/github/junrar/extract/ExtractArchive;->logWarn(Ljava/lang/String;)V

    .line 40
    return-void

    .line 42
    :cond_0
    const/4 v1, 0x0

    .line 44
    .local v1, "fh":Lcom/github/junrar/rarfile/FileHeader;
    :goto_2
    invoke-virtual {v0}, Lcom/github/junrar/Archive;->nextFileHeader()Lcom/github/junrar/rarfile/FileHeader;

    move-result-object v1

    .line 45
    if-nez v1, :cond_1

    .line 46
    goto :goto_5

    .line 48
    :cond_1
    invoke-virtual {v1}, Lcom/github/junrar/rarfile/FileHeader;->getFileNameString()Ljava/lang/String;

    move-result-object v2

    .line 49
    .local v2, "fileNameString":Ljava/lang/String;
    invoke-virtual {v1}, Lcom/github/junrar/rarfile/FileHeader;->isEncrypted()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 50
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "file is encrypted cannot extract: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/github/junrar/extract/ExtractArchive;->logWarn(Ljava/lang/String;)V

    .line 51
    goto :goto_2

    .line 53
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "extracting: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/github/junrar/extract/ExtractArchive;->logInfo(Ljava/lang/String;)V

    .line 55
    :try_start_1
    invoke-virtual {v1}, Lcom/github/junrar/rarfile/FileHeader;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 56
    invoke-static {v1, p2}, Lcom/github/junrar/extract/ExtractArchive;->createDirectory(Lcom/github/junrar/rarfile/FileHeader;Ljava/io/File;)V

    goto :goto_3

    .line 58
    :cond_3
    invoke-direct {p0, v1, p2}, Lcom/github/junrar/extract/ExtractArchive;->createFile(Lcom/github/junrar/rarfile/FileHeader;Ljava/io/File;)Ljava/io/File;

    move-result-object v3

    .line 59
    .local v3, "f":Ljava/io/File;
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 60
    .local v4, "stream":Ljava/io/OutputStream;
    invoke-virtual {v0, v1, v4}, Lcom/github/junrar/Archive;->extractFile(Lcom/github/junrar/rarfile/FileHeader;Ljava/io/OutputStream;)V

    .line 61
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Lcom/github/junrar/exception/RarException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_3

    .line 65
    .end local v3    # "f":Ljava/io/File;
    .end local v4    # "stream":Ljava/io/OutputStream;
    :catch_2
    move-exception v3

    .line 66
    .local v3, "e":Lcom/github/junrar/exception/RarException;
    const-string v4, "error extraction the file"

    invoke-direct {p0, v3, v4}, Lcom/github/junrar/extract/ExtractArchive;->logError(Ljava/lang/Exception;Ljava/lang/String;)V

    goto :goto_4

    .line 63
    .end local v3    # "e":Lcom/github/junrar/exception/RarException;
    :catch_3
    move-exception v3

    .line 64
    .local v3, "e":Ljava/io/IOException;
    const-string v4, "error extracting the file"

    invoke-direct {p0, v3, v4}, Lcom/github/junrar/extract/ExtractArchive;->logError(Ljava/lang/Exception;Ljava/lang/String;)V

    .line 67
    .end local v3    # "e":Ljava/io/IOException;
    :goto_3
    nop

    .line 68
    .end local v2    # "fileNameString":Ljava/lang/String;
    :goto_4
    goto :goto_2

    .line 70
    .end local v1    # "fh":Lcom/github/junrar/rarfile/FileHeader;
    :cond_4
    :goto_5
    return-void
.end method

.method public setLogger(Lorg/apache/commons/logging/Log;)V
    .locals 0
    .param p1, "logger"    # Lorg/apache/commons/logging/Log;

    .line 25
    iput-object p1, p0, Lcom/github/junrar/extract/ExtractArchive;->logger:Lorg/apache/commons/logging/Log;

    .line 26
    return-void
.end method
