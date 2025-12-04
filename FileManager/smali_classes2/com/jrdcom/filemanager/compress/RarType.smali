.class public Lcom/jrdcom/filemanager/compress/RarType;
.super Lcom/jrdcom/filemanager/compress/CommonCompress;
.source "RarType.java"


# static fields
.field public static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 18
    const-class v0, Lcom/jrdcom/filemanager/compress/RarType;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jrdcom/filemanager/compress/RarType;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Lcom/jrdcom/filemanager/compress/CommonCompress;-><init>()V

    return-void
.end method


# virtual methods
.method public doArchive()Z
    .locals 1

    .line 22
    const/4 v0, 0x0

    return v0
.end method

.method public doUnArchive(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 9

    .line 27
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jrdcom/filemanager/compress/RarType;->sInterrupt:Z

    .line 28
    nop

    .line 29
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, ".rar"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 30
    return v0

    .line 32
    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 33
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result p2

    if-nez p2, :cond_1

    .line 34
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 36
    :cond_1
    nop

    .line 38
    :try_start_0
    new-instance p2, Lcom/github/junrar/Archive;

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p2, v2}, Lcom/github/junrar/Archive;-><init>(Ljava/io/File;)V

    .line 40
    nop

    .line 41
    invoke-virtual {p2}, Lcom/github/junrar/Archive;->getMainHeader()Lcom/github/junrar/rarfile/MainHeader;

    move-result-object p1

    invoke-virtual {p1}, Lcom/github/junrar/rarfile/MainHeader;->print()V

    .line 42
    invoke-virtual {p2}, Lcom/github/junrar/Archive;->nextFileHeader()Lcom/github/junrar/rarfile/FileHeader;

    move-result-object p1

    .line 44
    nop

    .line 45
    invoke-virtual {p2}, Lcom/github/junrar/Archive;->getFileHeaders()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    move v4, v3

    .line 46
    :goto_0
    if-eqz p1, :cond_8

    .line 47
    invoke-virtual {p1}, Lcom/github/junrar/rarfile/FileHeader;->getFileNameW()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {p1}, Lcom/github/junrar/rarfile/FileHeader;->getFileNameString()Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Lcom/github/junrar/rarfile/FileHeader;->getFileNameW()Ljava/lang/String;

    move-result-object v5

    .line 48
    :goto_1
    invoke-virtual {p1}, Lcom/github/junrar/rarfile/FileHeader;->isDirectory()Z

    move-result v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    const-string v7, "\\"

    if-eqz v6, :cond_5

    .line 49
    :try_start_1
    sget-object p1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v5, v7, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 50
    new-instance v5, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    sget-object v7, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v5, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 52
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_3

    .line 53
    invoke-virtual {v5}, Ljava/io/File;->mkdirs()Z

    .line 55
    :cond_3
    iget-object p1, p0, Lcom/jrdcom/filemanager/compress/RarType;->mObserver:Lcom/jrdcom/filemanager/compress/CommonCompress$CompressObserver;

    if-eqz p1, :cond_4

    .line 56
    iget-object p1, p0, Lcom/jrdcom/filemanager/compress/RarType;->mObserver:Lcom/jrdcom/filemanager/compress/CommonCompress$CompressObserver;

    add-int/lit8 v6, v4, 0x1

    invoke-interface {p1, v5, v4, v2}, Lcom/jrdcom/filemanager/compress/CommonCompress$CompressObserver;->onUnArchiveComplete(Ljava/io/File;II)V

    move v4, v6

    .line 59
    :cond_4
    goto :goto_3

    .line 60
    :cond_5
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v5, v7, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    .line 61
    new-instance v6, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    sget-object v8, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v6, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 63
    invoke-virtual {v6}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v5

    .line 64
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_6

    .line 65
    invoke-virtual {v5}, Ljava/io/File;->mkdirs()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 68
    :cond_6
    :try_start_2
    invoke-virtual {v6}, Ljava/io/File;->createNewFile()Z

    .line 69
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 70
    invoke-virtual {p2, p1, v5}, Lcom/github/junrar/Archive;->extractFile(Lcom/github/junrar/rarfile/FileHeader;Ljava/io/OutputStream;)V

    .line 71
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 78
    goto :goto_2

    .line 75
    :catch_0
    move-exception p1

    .line 76
    nop

    .line 77
    :try_start_3
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    move v3, v0

    goto :goto_2

    .line 72
    :catch_1
    move-exception p1

    .line 73
    nop

    .line 74
    invoke-virtual {p1}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    .line 78
    move v3, v0

    .line 79
    :goto_2
    iget-object p1, p0, Lcom/jrdcom/filemanager/compress/RarType;->mObserver:Lcom/jrdcom/filemanager/compress/CommonCompress$CompressObserver;

    if-eqz p1, :cond_7

    .line 80
    iget-object p1, p0, Lcom/jrdcom/filemanager/compress/RarType;->mObserver:Lcom/jrdcom/filemanager/compress/CommonCompress$CompressObserver;

    add-int/lit8 v5, v4, 0x1

    invoke-interface {p1, v6, v4, v2}, Lcom/jrdcom/filemanager/compress/CommonCompress$CompressObserver;->onUnArchiveComplete(Ljava/io/File;II)V

    move v4, v5

    .line 83
    :cond_7
    :goto_3
    invoke-virtual {p2}, Lcom/github/junrar/Archive;->nextFileHeader()Lcom/github/junrar/rarfile/FileHeader;

    move-result-object p1

    .line 84
    goto/16 :goto_0

    .line 85
    :cond_8
    invoke-virtual {p2}, Lcom/github/junrar/Archive;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 90
    goto :goto_4

    .line 87
    :catch_2
    move-exception p1

    .line 88
    nop

    .line 89
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    move v3, v0

    .line 91
    :goto_4
    iget-boolean p1, p0, Lcom/jrdcom/filemanager/compress/RarType;->sInterrupt:Z

    if-eqz p1, :cond_9

    .line 92
    iput-boolean v0, p0, Lcom/jrdcom/filemanager/compress/RarType;->sInterrupt:Z

    .line 94
    :cond_9
    return v3
.end method
