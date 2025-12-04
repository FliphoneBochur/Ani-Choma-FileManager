.class public Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;
.super Lorg/apache/commons/compress/archivers/ArchiveInputStream;
.source "ArArchiveInputStream.java"


# static fields
.field private static final BSD_LONGNAME_PATTERN:Ljava/lang/String; = "^#1/\\d+"

.field static final BSD_LONGNAME_PREFIX:Ljava/lang/String; = "#1/"

.field private static final BSD_LONGNAME_PREFIX_LEN:I

.field private static final GNU_LONGNAME_PATTERN:Ljava/lang/String; = "^/\\d+"

.field private static final GNU_STRING_TABLE_NAME:Ljava/lang/String; = "//"


# instance fields
.field private final FILE_MODE_BUF:[B

.field private final ID_BUF:[B

.field private final LAST_MODIFIED_BUF:[B

.field private final LENGTH_BUF:[B

.field private final NAME_BUF:[B

.field private closed:Z

.field private currentEntry:Lorg/apache/commons/compress/archivers/ar/ArArchiveEntry;

.field private entryOffset:J

.field private final input:Ljava/io/InputStream;

.field private namebuffer:[B

.field private offset:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 305
    const-string v0, "#1/"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    sput v0, Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;->BSD_LONGNAME_PREFIX_LEN:I

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 2
    .param p1, "pInput"    # Ljava/io/InputStream;

    .line 70
    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/ArchiveInputStream;-><init>()V

    .line 39
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;->offset:J

    .line 46
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;->currentEntry:Lorg/apache/commons/compress/archivers/ar/ArArchiveEntry;

    .line 49
    iput-object v0, p0, Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;->namebuffer:[B

    .line 55
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;->entryOffset:J

    .line 58
    const/16 v0, 0x10

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;->NAME_BUF:[B

    .line 59
    const/16 v0, 0xc

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;->LAST_MODIFIED_BUF:[B

    .line 60
    const/4 v0, 0x6

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;->ID_BUF:[B

    .line 61
    const/16 v0, 0x8

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;->FILE_MODE_BUF:[B

    .line 62
    const/16 v0, 0xa

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;->LENGTH_BUF:[B

    .line 71
    iput-object p1, p0, Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;->input:Ljava/io/InputStream;

    .line 72
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;->closed:Z

    .line 73
    return-void
.end method

.method private asInt([B)I
    .locals 2
    .param p1, "input"    # [B

    .line 194
    const/16 v0, 0xa

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;->asInt([BIZ)I

    move-result v0

    return v0
.end method

.method private asInt([BI)I
    .locals 1
    .param p1, "input"    # [B
    .param p2, "base"    # I

    .line 202
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;->asInt([BIZ)I

    move-result v0

    return v0
.end method

.method private asInt([BIZ)I
    .locals 2
    .param p1, "input"    # [B
    .param p2, "base"    # I
    .param p3, "treatBlankAsZero"    # Z

    .line 206
    invoke-static {p1}, Lorg/apache/commons/compress/utils/ArchiveUtils;->toAsciiString([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 207
    .local v0, "string":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    if-eqz p3, :cond_0

    .line 208
    const/4 v1, 0x0

    return v1

    .line 210
    :cond_0
    invoke-static {v0, p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1

    return v1
.end method

.method private asInt([BZ)I
    .locals 1
    .param p1, "input"    # [B
    .param p2, "treatBlankAsZero"    # Z

    .line 198
    const/16 v0, 0xa

    invoke-direct {p0, p1, v0, p2}, Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;->asInt([BIZ)I

    move-result v0

    return v0
.end method

.method private asLong([B)J
    .locals 2
    .param p1, "input"    # [B

    .line 190
    invoke-static {p1}, Lorg/apache/commons/compress/utils/ArchiveUtils;->toAsciiString([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method private getBSDLongName(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "bsdLongName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 345
    sget v0, Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;->BSD_LONGNAME_PREFIX_LEN:I

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 347
    .local v0, "nameLen":I
    new-array v1, v0, [B

    .line 348
    .local v1, "name":[B
    invoke-static {p0, v1}, Lorg/apache/commons/compress/utils/IOUtils;->readFully(Ljava/io/InputStream;[B)I

    move-result v2

    .line 349
    .local v2, "read":I
    if-ne v2, v0, :cond_0

    .line 352
    invoke-static {v1}, Lorg/apache/commons/compress/utils/ArchiveUtils;->toAsciiString([B)Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 350
    :cond_0
    new-instance v3, Ljava/io/EOFException;

    invoke-direct {v3}, Ljava/io/EOFException;-><init>()V

    throw v3
.end method

.method private getExtendedName(I)Ljava/lang/String;
    .locals 4
    .param p1, "offset"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 176
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;->namebuffer:[B

    if-eqz v0, :cond_4

    .line 179
    move v0, p1

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;->namebuffer:[B

    array-length v2, v1

    if-ge v0, v2, :cond_3

    .line 180
    aget-byte v2, v1, v0

    const/16 v3, 0xa

    if-eq v2, v3, :cond_1

    aget-byte v1, v1, v0

    if-nez v1, :cond_0

    goto :goto_1

    .line 179
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 181
    :cond_1
    :goto_1
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;->namebuffer:[B

    add-int/lit8 v2, v0, -0x1

    aget-byte v1, v1, v2

    const/16 v2, 0x2f

    if-ne v1, v2, :cond_2

    .line 182
    add-int/lit8 v0, v0, -0x1

    .line 184
    :cond_2
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;->namebuffer:[B

    sub-int v2, v0, p1

    invoke-static {v1, p1, v2}, Lorg/apache/commons/compress/utils/ArchiveUtils;->toAsciiString([BII)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 187
    .end local v0    # "i":I
    :cond_3
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to read entry: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 177
    :cond_4
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Cannot process GNU long filename as no // record was found"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static isBSDLongName(Ljava/lang/String;)Z
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 333
    if-eqz p0, :cond_0

    const-string v0, "^#1/\\d+"

    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isGNULongName(Ljava/lang/String;)Z
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 403
    if-eqz p1, :cond_0

    const-string v0, "^/\\d+"

    invoke-virtual {p1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static isGNUStringTable(Ljava/lang/String;)Z
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 375
    const-string v0, "//"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static matches([BI)Z
    .locals 4
    .param p0, "signature"    # [B
    .param p1, "length"    # I

    .line 273
    const/4 v0, 0x0

    const/16 v1, 0x8

    if-ge p1, v1, :cond_0

    .line 274
    return v0

    .line 276
    :cond_0
    aget-byte v1, p0, v0

    const/16 v2, 0x21

    if-eq v1, v2, :cond_1

    .line 277
    return v0

    .line 279
    :cond_1
    const/4 v1, 0x1

    aget-byte v2, p0, v1

    const/16 v3, 0x3c

    if-eq v2, v3, :cond_2

    .line 280
    return v0

    .line 282
    :cond_2
    const/4 v2, 0x2

    aget-byte v2, p0, v2

    const/16 v3, 0x61

    if-eq v2, v3, :cond_3

    .line 283
    return v0

    .line 285
    :cond_3
    const/4 v2, 0x3

    aget-byte v2, p0, v2

    const/16 v3, 0x72

    if-eq v2, v3, :cond_4

    .line 286
    return v0

    .line 288
    :cond_4
    const/4 v2, 0x4

    aget-byte v2, p0, v2

    const/16 v3, 0x63

    if-eq v2, v3, :cond_5

    .line 289
    return v0

    .line 291
    :cond_5
    const/4 v2, 0x5

    aget-byte v2, p0, v2

    const/16 v3, 0x68

    if-eq v2, v3, :cond_6

    .line 292
    return v0

    .line 294
    :cond_6
    const/4 v2, 0x6

    aget-byte v2, p0, v2

    const/16 v3, 0x3e

    if-eq v2, v3, :cond_7

    .line 295
    return v0

    .line 297
    :cond_7
    const/4 v2, 0x7

    aget-byte v2, p0, v2

    const/16 v3, 0xa

    if-eq v2, v3, :cond_8

    .line 298
    return v0

    .line 301
    :cond_8
    return v1
.end method

.method private readGNUStringTable([B)Lorg/apache/commons/compress/archivers/ar/ArArchiveEntry;
    .locals 6
    .param p1, "length"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 384
    invoke-direct {p0, p1}, Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;->asInt([B)I

    move-result v0

    .line 385
    .local v0, "bufflen":I
    new-array v1, v0, [B

    iput-object v1, p0, Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;->namebuffer:[B

    .line 386
    const/4 v2, 0x0

    invoke-static {p0, v1, v2, v0}, Lorg/apache/commons/compress/utils/IOUtils;->readFully(Ljava/io/InputStream;[BII)I

    move-result v1

    .line 387
    .local v1, "read":I
    if-ne v1, v0, :cond_0

    .line 391
    new-instance v2, Lorg/apache/commons/compress/archivers/ar/ArArchiveEntry;

    int-to-long v3, v0

    const-string v5, "//"

    invoke-direct {v2, v5, v3, v4}, Lorg/apache/commons/compress/archivers/ar/ArArchiveEntry;-><init>(Ljava/lang/String;J)V

    return-object v2

    .line 388
    :cond_0
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to read complete // record: expected="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " read="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 231
    iget-boolean v0, p0, Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;->closed:Z

    if-nez v0, :cond_0

    .line 232
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;->closed:Z

    .line 233
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;->input:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 235
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;->currentEntry:Lorg/apache/commons/compress/archivers/ar/ArArchiveEntry;

    .line 236
    return-void
.end method

.method public getNextArEntry()Lorg/apache/commons/compress/archivers/ar/ArArchiveEntry;
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 83
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;->currentEntry:Lorg/apache/commons/compress/archivers/ar/ArArchiveEntry;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 84
    iget-wide v2, p0, Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;->entryOffset:J

    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/ar/ArArchiveEntry;->getLength()J

    move-result-wide v4

    add-long/2addr v2, v4

    .line 85
    .local v2, "entryEnd":J
    iget-wide v4, p0, Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;->offset:J

    sub-long v4, v2, v4

    invoke-static {p0, v4, v5}, Lorg/apache/commons/compress/utils/IOUtils;->skip(Ljava/io/InputStream;J)J

    .line 86
    iput-object v1, p0, Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;->currentEntry:Lorg/apache/commons/compress/archivers/ar/ArArchiveEntry;

    .line 89
    .end local v2    # "entryEnd":J
    :cond_0
    iget-wide v2, p0, Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;->offset:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-nez v0, :cond_3

    .line 90
    const-string v0, "!<arch>\n"

    invoke-static {v0}, Lorg/apache/commons/compress/utils/ArchiveUtils;->toAsciiBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 91
    .local v0, "expected":[B
    array-length v2, v0

    new-array v2, v2, [B

    .line 92
    .local v2, "realized":[B
    invoke-static {p0, v2}, Lorg/apache/commons/compress/utils/IOUtils;->readFully(Ljava/io/InputStream;[B)I

    move-result v3

    .line 93
    .local v3, "read":I
    array-length v6, v0

    if-ne v3, v6, :cond_2

    .line 96
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    array-length v7, v0

    if-ge v6, v7, :cond_3

    .line 97
    aget-byte v7, v0, v6

    aget-byte v8, v2, v6

    if-ne v7, v8, :cond_1

    .line 96
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 98
    :cond_1
    new-instance v1, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "invalid header "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Lorg/apache/commons/compress/utils/ArchiveUtils;->toAsciiString([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 94
    .end local v6    # "i":I
    :cond_2
    new-instance v1, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "failed to read header. Occured at byte: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;->getBytesRead()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 103
    .end local v0    # "expected":[B
    .end local v2    # "realized":[B
    .end local v3    # "read":I
    :cond_3
    iget-wide v2, p0, Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;->offset:J

    const-wide/16 v6, 0x2

    rem-long/2addr v2, v6

    cmp-long v0, v2, v4

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;->read()I

    move-result v0

    if-gez v0, :cond_4

    .line 105
    return-object v1

    .line 108
    :cond_4
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;->input:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0

    if-nez v0, :cond_5

    .line 109
    return-object v1

    .line 112
    :cond_5
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;->NAME_BUF:[B

    invoke-static {p0, v0}, Lorg/apache/commons/compress/utils/IOUtils;->readFully(Ljava/io/InputStream;[B)I

    .line 113
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;->LAST_MODIFIED_BUF:[B

    invoke-static {p0, v0}, Lorg/apache/commons/compress/utils/IOUtils;->readFully(Ljava/io/InputStream;[B)I

    .line 114
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;->ID_BUF:[B

    invoke-static {p0, v0}, Lorg/apache/commons/compress/utils/IOUtils;->readFully(Ljava/io/InputStream;[B)I

    .line 115
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;->ID_BUF:[B

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;->asInt([BZ)I

    move-result v0

    .line 116
    .local v0, "userId":I
    iget-object v2, p0, Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;->ID_BUF:[B

    invoke-static {p0, v2}, Lorg/apache/commons/compress/utils/IOUtils;->readFully(Ljava/io/InputStream;[B)I

    .line 117
    iget-object v2, p0, Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;->FILE_MODE_BUF:[B

    invoke-static {p0, v2}, Lorg/apache/commons/compress/utils/IOUtils;->readFully(Ljava/io/InputStream;[B)I

    .line 118
    iget-object v2, p0, Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;->LENGTH_BUF:[B

    invoke-static {p0, v2}, Lorg/apache/commons/compress/utils/IOUtils;->readFully(Ljava/io/InputStream;[B)I

    .line 121
    const-string v2, "`\n"

    invoke-static {v2}, Lorg/apache/commons/compress/utils/ArchiveUtils;->toAsciiBytes(Ljava/lang/String;)[B

    move-result-object v2

    .line 122
    .local v2, "expected":[B
    array-length v3, v2

    new-array v3, v3, [B

    .line 123
    .local v3, "realized":[B
    invoke-static {p0, v3}, Lorg/apache/commons/compress/utils/IOUtils;->readFully(Ljava/io/InputStream;[B)I

    move-result v4

    .line 124
    .local v4, "read":I
    array-length v5, v2

    if-ne v4, v5, :cond_c

    .line 127
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    array-length v6, v2

    if-ge v5, v6, :cond_7

    .line 128
    aget-byte v6, v2, v5

    aget-byte v7, v3, v5

    if-ne v6, v7, :cond_6

    .line 127
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 129
    :cond_6
    new-instance v1, Ljava/io/IOException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "invalid entry trailer. not read the content? Occured at byte: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;->getBytesRead()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v1, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 134
    .end local v2    # "expected":[B
    .end local v3    # "realized":[B
    .end local v4    # "read":I
    .end local v5    # "i":I
    :cond_7
    iget-wide v2, p0, Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;->offset:J

    iput-wide v2, p0, Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;->entryOffset:J

    .line 139
    iget-object v2, p0, Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;->NAME_BUF:[B

    invoke-static {v2}, Lorg/apache/commons/compress/utils/ArchiveUtils;->toAsciiString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 140
    .local v2, "temp":Ljava/lang/String;
    invoke-static {v2}, Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;->isGNUStringTable(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 141
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;->LENGTH_BUF:[B

    invoke-direct {p0, v1}, Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;->readGNUStringTable([B)Lorg/apache/commons/compress/archivers/ar/ArArchiveEntry;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;->currentEntry:Lorg/apache/commons/compress/archivers/ar/ArArchiveEntry;

    .line 142
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;->getNextArEntry()Lorg/apache/commons/compress/archivers/ar/ArArchiveEntry;

    move-result-object v1

    return-object v1

    .line 145
    :cond_8
    iget-object v3, p0, Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;->LENGTH_BUF:[B

    invoke-direct {p0, v3}, Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;->asLong([B)J

    move-result-wide v3

    .line 146
    .local v3, "len":J
    const-string v5, "/"

    invoke-virtual {v2, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 147
    const/4 v5, 0x0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    sub-int/2addr v6, v1

    invoke-virtual {v2, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    move-object v11, v2

    move-wide v12, v3

    goto :goto_3

    .line 148
    :cond_9
    invoke-direct {p0, v2}, Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;->isGNULongName(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 149
    invoke-virtual {v2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 150
    .local v5, "off":I
    invoke-direct {p0, v5}, Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;->getExtendedName(I)Ljava/lang/String;

    move-result-object v2

    .end local v5    # "off":I
    goto :goto_2

    .line 151
    :cond_a
    invoke-static {v2}, Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;->isBSDLongName(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 152
    invoke-direct {p0, v2}, Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;->getBSDLongName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 156
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    .line 157
    .local v5, "nameLen":I
    int-to-long v6, v5

    sub-long/2addr v3, v6

    .line 158
    iget-wide v6, p0, Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;->entryOffset:J

    int-to-long v8, v5

    add-long/2addr v6, v8

    iput-wide v6, p0, Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;->entryOffset:J

    move-object v11, v2

    move-wide v12, v3

    goto :goto_3

    .line 151
    .end local v5    # "nameLen":I
    :cond_b
    :goto_2
    move-object v11, v2

    move-wide v12, v3

    .line 161
    .end local v2    # "temp":Ljava/lang/String;
    .end local v3    # "len":J
    .local v11, "temp":Ljava/lang/String;
    .local v12, "len":J
    :goto_3
    new-instance v14, Lorg/apache/commons/compress/archivers/ar/ArArchiveEntry;

    iget-object v2, p0, Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;->ID_BUF:[B

    invoke-direct {p0, v2, v1}, Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;->asInt([BZ)I

    move-result v7

    iget-object v1, p0, Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;->FILE_MODE_BUF:[B

    const/16 v2, 0x8

    invoke-direct {p0, v1, v2}, Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;->asInt([BI)I

    move-result v8

    iget-object v1, p0, Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;->LAST_MODIFIED_BUF:[B

    invoke-direct {p0, v1}, Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;->asLong([B)J

    move-result-wide v9

    move-object v2, v14

    move-object v3, v11

    move-wide v4, v12

    move v6, v0

    invoke-direct/range {v2 .. v10}, Lorg/apache/commons/compress/archivers/ar/ArArchiveEntry;-><init>(Ljava/lang/String;JIIIJ)V

    iput-object v14, p0, Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;->currentEntry:Lorg/apache/commons/compress/archivers/ar/ArArchiveEntry;

    .line 165
    return-object v14

    .line 125
    .end local v11    # "temp":Ljava/lang/String;
    .end local v12    # "len":J
    .local v2, "expected":[B
    .local v3, "realized":[B
    .restart local v4    # "read":I
    :cond_c
    new-instance v1, Ljava/io/IOException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "failed to read entry trailer. Occured at byte: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;->getBytesRead()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getNextEntry()Lorg/apache/commons/compress/archivers/ArchiveEntry;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 221
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;->getNextArEntry()Lorg/apache/commons/compress/archivers/ar/ArArchiveEntry;

    move-result-object v0

    return-object v0
.end method

.method public read([BII)I
    .locals 8
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 245
    move v0, p3

    .line 246
    .local v0, "toRead":I
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;->currentEntry:Lorg/apache/commons/compress/archivers/ar/ArArchiveEntry;

    if-eqz v1, :cond_1

    .line 247
    iget-wide v2, p0, Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;->entryOffset:J

    invoke-virtual {v1}, Lorg/apache/commons/compress/archivers/ar/ArArchiveEntry;->getLength()J

    move-result-wide v4

    add-long/2addr v2, v4

    .line 248
    .local v2, "entryEnd":J
    if-lez p3, :cond_0

    iget-wide v4, p0, Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;->offset:J

    cmp-long v1, v2, v4

    if-lez v1, :cond_0

    .line 249
    int-to-long v6, p3

    sub-long v4, v2, v4

    invoke-static {v6, v7, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    long-to-int v0, v4

    goto :goto_0

    .line 251
    :cond_0
    const/4 v1, -0x1

    return v1

    .line 254
    .end local v2    # "entryEnd":J
    :cond_1
    :goto_0
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;->input:Ljava/io/InputStream;

    invoke-virtual {v1, p1, p2, v0}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    .line 255
    .local v1, "ret":I
    invoke-virtual {p0, v1}, Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;->count(I)V

    .line 256
    iget-wide v2, p0, Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;->offset:J

    if-lez v1, :cond_2

    int-to-long v4, v1

    goto :goto_1

    :cond_2
    const-wide/16 v4, 0x0

    :goto_1
    add-long/2addr v2, v4

    iput-wide v2, p0, Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;->offset:J

    .line 257
    return v1
.end method
