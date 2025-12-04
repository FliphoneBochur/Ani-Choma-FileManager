.class public final Lcom/jrdcom/filemanager/utils/SevenZUtil;
.super Ljava/lang/Object;
.source "SevenZUtil.java"


# static fields
.field public static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 22
    const-class v0, Lcom/jrdcom/filemanager/utils/SevenZUtil;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jrdcom/filemanager/utils/SevenZUtil;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private dfs([Ljava/io/File;Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream;Ljava/lang/String;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 25
    const/16 v0, 0x400

    new-array v0, v0, [B

    .line 26
    array-length v1, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_3

    aget-object v4, p1, v3

    .line 27
    invoke-virtual {v4}, Ljava/io/File;->isFile()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 28
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 29
    new-instance v6, Ljava/io/BufferedInputStream;

    invoke-direct {v6, v5}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 30
    new-instance v5, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v7}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;-><init>(Ljava/lang/String;)V

    .line 31
    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v7

    invoke-virtual {v5, v7, v8}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->setSize(J)V

    .line 32
    invoke-virtual {p2, v5}, Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream;->putArchiveEntry(Lorg/apache/commons/compress/archivers/ArchiveEntry;)V

    .line 34
    :goto_1
    invoke-virtual {v6, v0}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v5

    if-lez v5, :cond_0

    .line 35
    invoke-virtual {p2, v0, v2, v5}, Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream;->write([BII)V

    goto :goto_1

    .line 37
    :cond_0
    invoke-virtual {v6}, Ljava/io/BufferedInputStream;->close()V

    .line 38
    invoke-virtual {p2}, Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream;->closeArchiveEntry()V

    .line 40
    sget-object v5, Lcom/jrdcom/filemanager/utils/SevenZUtil;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " has compress sucessfully"

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/jrdcom/filemanager/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    goto :goto_2

    .line 43
    :cond_1
    invoke-virtual {v4}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v5

    .line 44
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/"

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 45
    array-length v6, v5

    if-gtz v6, :cond_2

    .line 46
    new-instance v5, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;

    invoke-direct {v5, v4}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v5}, Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream;->putArchiveEntry(Lorg/apache/commons/compress/archivers/ArchiveEntry;)V

    .line 47
    invoke-virtual {p2}, Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream;->closeArchiveEntry()V

    goto :goto_2

    .line 49
    :cond_2
    invoke-direct {p0, v5, p2, v4}, Lcom/jrdcom/filemanager/utils/SevenZUtil;->dfs([Ljava/io/File;Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream;Ljava/lang/String;)V

    .line 26
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 52
    :cond_3
    return-void
.end method

.method public static final doArchiver(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 56
    const/16 p0, 0x400

    new-array p0, p0, [B

    .line 58
    new-instance p1, Ljava/io/File;

    const-string v0, "/storage/emulated/0/9.apk"

    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 60
    new-instance v0, Lorg/apache/commons/compress/archivers/sevenz/SevenZOutputFile;

    new-instance v1, Ljava/io/File;

    const-string v2, "/storage/emulated/0/hahaha.7z"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZOutputFile;-><init>(Ljava/io/File;)V

    .line 61
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 62
    new-instance v2, Ljava/io/BufferedInputStream;

    invoke-direct {v2, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 64
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZOutputFile;->createArchiveEntry(Ljava/io/File;Ljava/lang/String;)Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;

    move-result-object v1

    .line 67
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->setSize(J)V

    .line 68
    invoke-virtual {v0, v1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZOutputFile;->putArchiveEntry(Lorg/apache/commons/compress/archivers/ArchiveEntry;)V

    .line 70
    :goto_0
    invoke-virtual {v2, p0}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v1

    if-lez v1, :cond_0

    .line 71
    const/4 v3, 0x0

    invoke-virtual {v0, p0, v3, v1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZOutputFile;->write([BII)V

    goto :goto_0

    .line 73
    :cond_0
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V

    .line 74
    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/sevenz/SevenZOutputFile;->closeArchiveEntry()V

    .line 76
    sget-object p0, Lcom/jrdcom/filemanager/utils/SevenZUtil;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " has compress successfully"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/jrdcom/filemanager/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    return-void
.end method


# virtual methods
.method public doUnArchiver(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 82
    return-void
.end method
