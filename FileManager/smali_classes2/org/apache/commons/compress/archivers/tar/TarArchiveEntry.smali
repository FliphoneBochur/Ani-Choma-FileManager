.class public Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;
.super Ljava/lang/Object;
.source "TarArchiveEntry.java"

# interfaces
.implements Lorg/apache/commons/compress/archivers/tar/TarConstants;
.implements Lorg/apache/commons/compress/archivers/ArchiveEntry;


# static fields
.field public static final DEFAULT_DIR_MODE:I = 0x41ed

.field public static final DEFAULT_FILE_MODE:I = 0x81a4

.field private static final EMPTY_TAR_ARCHIVE_ENTRIES:[Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;

.field public static final MAX_NAMELEN:I = 0x1f

.field public static final MILLIS_PER_SECOND:I = 0x3e8


# instance fields
.field private checkSumOK:Z

.field private devMajor:I

.field private devMinor:I

.field private final file:Ljava/io/File;

.field private groupId:J

.field private groupName:Ljava/lang/String;

.field private isExtended:Z

.field private linkFlag:B

.field private linkName:Ljava/lang/String;

.field private magic:Ljava/lang/String;

.field private modTime:J

.field private mode:I

.field private name:Ljava/lang/String;

.field private paxGNUSparse:Z

.field private preserveLeadingSlashes:Z

.field private realSize:J

.field private size:J

.field private starSparse:Z

.field private userId:J

.field private userName:Ljava/lang/String;

.field private version:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 146
    const/4 v0, 0x0

    new-array v0, v0, [Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;

    sput-object v0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->EMPTY_TAR_ARCHIVE_ENTRIES:[Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;

    return-void
.end method

.method private constructor <init>()V
    .locals 4

    .line 225
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 149
    const-string v0, ""

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->name:Ljava/lang/String;

    .line 158
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->userId:J

    .line 161
    iput-wide v1, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->groupId:J

    .line 164
    iput-wide v1, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->size:J

    .line 176
    iput-object v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->linkName:Ljava/lang/String;

    .line 179
    const-string v1, "ustar\u0000"

    iput-object v1, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->magic:Ljava/lang/String;

    .line 181
    const-string v1, "00"

    iput-object v1, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->version:Ljava/lang/String;

    .line 187
    iput-object v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->groupName:Ljava/lang/String;

    .line 190
    const/4 v1, 0x0

    iput v1, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->devMajor:I

    .line 193
    iput v1, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->devMinor:I

    .line 226
    const-string v2, "user.name"

    invoke-static {v2, v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 228
    .local v0, "user":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x1f

    if-le v2, v3, :cond_0

    .line 229
    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 232
    :cond_0
    iput-object v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->userName:Ljava/lang/String;

    .line 233
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->file:Ljava/io/File;

    .line 234
    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .locals 1
    .param p1, "file"    # Ljava/io/File;

    .line 308
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 309
    return-void
.end method

.method public constructor <init>(Ljava/io/File;Ljava/lang/String;)V
    .locals 6
    .param p1, "file"    # Ljava/io/File;
    .param p2, "fileName"    # Ljava/lang/String;

    .line 318
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 149
    const-string v0, ""

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->name:Ljava/lang/String;

    .line 158
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->userId:J

    .line 161
    iput-wide v1, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->groupId:J

    .line 164
    iput-wide v1, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->size:J

    .line 176
    iput-object v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->linkName:Ljava/lang/String;

    .line 179
    const-string v1, "ustar\u0000"

    iput-object v1, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->magic:Ljava/lang/String;

    .line 181
    const-string v1, "00"

    iput-object v1, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->version:Ljava/lang/String;

    .line 187
    iput-object v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->groupName:Ljava/lang/String;

    .line 190
    const/4 v1, 0x0

    iput v1, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->devMajor:I

    .line 193
    iput v1, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->devMinor:I

    .line 319
    invoke-static {p2, v1}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->normalizeFileName(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    .line 320
    .local v1, "normalizedName":Ljava/lang/String;
    iput-object p1, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->file:Ljava/io/File;

    .line 322
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 323
    const/16 v2, 0x41ed

    iput v2, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->mode:I

    .line 324
    const/16 v2, 0x35

    iput-byte v2, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->linkFlag:B

    .line 326
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    .line 327
    .local v2, "nameLength":I
    if-eqz v2, :cond_1

    add-int/lit8 v3, v2, -0x1

    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x2f

    if-eq v3, v4, :cond_0

    goto :goto_0

    .line 330
    :cond_0
    iput-object v1, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->name:Ljava/lang/String;

    goto :goto_1

    .line 328
    :cond_1
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->name:Ljava/lang/String;

    .line 332
    .end local v2    # "nameLength":I
    :goto_1
    goto :goto_2

    .line 333
    :cond_2
    const v2, 0x81a4

    iput v2, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->mode:I

    .line 334
    const/16 v2, 0x30

    iput-byte v2, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->linkFlag:B

    .line 335
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v2

    iput-wide v2, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->size:J

    .line 336
    iput-object v1, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->name:Ljava/lang/String;

    .line 339
    :goto_2
    invoke-virtual {p1}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    iput-wide v2, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->modTime:J

    .line 340
    iput-object v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->userName:Ljava/lang/String;

    .line 341
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 243
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;-><init>(Ljava/lang/String;Z)V

    .line 244
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;B)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "linkFlag"    # B

    .line 278
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;-><init>(Ljava/lang/String;BZ)V

    .line 279
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;BZ)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "linkFlag"    # B
    .param p3, "preserveLeadingSlashes"    # Z

    .line 292
    invoke-direct {p0, p1, p3}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;-><init>(Ljava/lang/String;Z)V

    .line 293
    iput-byte p2, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->linkFlag:B

    .line 294
    const/16 v0, 0x4c

    if-ne p2, v0, :cond_0

    .line 295
    const-string v0, "ustar "

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->magic:Ljava/lang/String;

    .line 296
    const-string v0, " \u0000"

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->version:Ljava/lang/String;

    .line 298
    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "preserveLeadingSlashes"    # Z

    .line 257
    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;-><init>()V

    .line 259
    iput-boolean p2, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->preserveLeadingSlashes:Z

    .line 261
    invoke-static {p1, p2}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->normalizeFileName(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    .line 262
    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    .line 264
    .local v0, "isDir":Z
    iput-object p1, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->name:Ljava/lang/String;

    .line 265
    if-eqz v0, :cond_0

    const/16 v1, 0x41ed

    goto :goto_0

    :cond_0
    const v1, 0x81a4

    :goto_0
    iput v1, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->mode:I

    .line 266
    if-eqz v0, :cond_1

    const/16 v1, 0x35

    goto :goto_1

    :cond_1
    const/16 v1, 0x30

    :goto_1
    iput-byte v1, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->linkFlag:B

    .line 267
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    iput-wide v1, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->modTime:J

    .line 268
    const-string v1, ""

    iput-object v1, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->userName:Ljava/lang/String;

    .line 269
    return-void
.end method

.method public constructor <init>([B)V
    .locals 0
    .param p1, "headerBuf"    # [B

    .line 351
    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;-><init>()V

    .line 352
    invoke-virtual {p0, p1}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->parseTarHeader([B)V

    .line 353
    return-void
.end method

.method public constructor <init>([BLorg/apache/commons/compress/archivers/zip/ZipEncoding;)V
    .locals 0
    .param p1, "headerBuf"    # [B
    .param p2, "encoding"    # Lorg/apache/commons/compress/archivers/zip/ZipEncoding;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 367
    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;-><init>()V

    .line 368
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->parseTarHeader([BLorg/apache/commons/compress/archivers/zip/ZipEncoding;)V

    .line 369
    return-void
.end method

.method private evaluateType([B)I
    .locals 3
    .param p1, "header"    # [B

    .line 1218
    const-string v0, "ustar "

    const/16 v1, 0x101

    const/4 v2, 0x6

    invoke-static {v0, p1, v1, v2}, Lorg/apache/commons/compress/utils/ArchiveUtils;->matchAsciiBuffer(Ljava/lang/String;[BII)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1219
    const/4 v0, 0x2

    return v0

    .line 1221
    :cond_0
    const-string v0, "ustar\u0000"

    invoke-static {v0, p1, v1, v2}, Lorg/apache/commons/compress/utils/ArchiveUtils;->matchAsciiBuffer(Ljava/lang/String;[BII)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1222
    const/16 v0, 0x1fc

    const-string v1, "tar\u0000"

    const/4 v2, 0x4

    invoke-static {v1, p1, v0, v2}, Lorg/apache/commons/compress/utils/ArchiveUtils;->matchAsciiBuffer(Ljava/lang/String;[BII)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1224
    return v2

    .line 1226
    :cond_1
    const/4 v0, 0x3

    return v0

    .line 1228
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method private static normalizeFileName(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 6
    .param p0, "fileName"    # Ljava/lang/String;
    .param p1, "preserveLeadingSlashes"    # Z

    .line 1174
    const-string v0, "os.name"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 1176
    .local v0, "osname":Ljava/lang/String;
    const/4 v1, 0x1

    if-eqz v0, :cond_4

    .line 1181
    const-string v2, "windows"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    const/16 v3, 0x3a

    if-eqz v2, :cond_3

    .line 1182
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v4, 0x2

    if-le v2, v4, :cond_4

    .line 1183
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 1184
    .local v2, "ch1":C
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 1186
    .local v5, "ch2":C
    if-ne v5, v3, :cond_2

    const/16 v3, 0x61

    if-lt v2, v3, :cond_0

    const/16 v3, 0x7a

    if-le v2, v3, :cond_1

    :cond_0
    const/16 v3, 0x41

    if-lt v2, v3, :cond_2

    const/16 v3, 0x5a

    if-gt v2, v3, :cond_2

    .line 1189
    :cond_1
    invoke-virtual {p0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 1191
    .end local v2    # "ch1":C
    .end local v5    # "ch2":C
    :cond_2
    goto :goto_0

    .line 1192
    :cond_3
    const-string v2, "netware"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1193
    invoke-virtual {p0, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 1194
    .local v2, "colon":I
    const/4 v3, -0x1

    if-eq v2, v3, :cond_4

    .line 1195
    add-int/lit8 v3, v2, 0x1

    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 1200
    .end local v2    # "colon":I
    :cond_4
    :goto_0
    sget-char v2, Ljava/io/File;->separatorChar:C

    const/16 v3, 0x2f

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    .line 1205
    :goto_1
    if-nez p1, :cond_5

    const-string v2, "/"

    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1206
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    .line 1208
    :cond_5
    return-object p0
.end method

.method private parseTarHeader([BLorg/apache/commons/compress/archivers/zip/ZipEncoding;Z)V
    .locals 7
    .param p1, "header"    # [B
    .param p2, "encoding"    # Lorg/apache/commons/compress/archivers/zip/ZipEncoding;
    .param p3, "oldStyle"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1091
    const/4 v0, 0x0

    .line 1093
    .local v0, "offset":I
    const/16 v1, 0x64

    if-eqz p3, :cond_0

    invoke-static {p1, v0, v1}, Lorg/apache/commons/compress/archivers/tar/TarUtils;->parseName([BII)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    invoke-static {p1, v0, v1, p2}, Lorg/apache/commons/compress/archivers/tar/TarUtils;->parseName([BIILorg/apache/commons/compress/archivers/zip/ZipEncoding;)Ljava/lang/String;

    move-result-object v2

    :goto_0
    iput-object v2, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->name:Ljava/lang/String;

    .line 1095
    add-int/2addr v0, v1

    .line 1096
    const/16 v2, 0x8

    invoke-static {p1, v0, v2}, Lorg/apache/commons/compress/archivers/tar/TarUtils;->parseOctalOrBinary([BII)J

    move-result-wide v3

    long-to-int v3, v3

    iput v3, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->mode:I

    .line 1097
    add-int/2addr v0, v2

    .line 1098
    invoke-static {p1, v0, v2}, Lorg/apache/commons/compress/archivers/tar/TarUtils;->parseOctalOrBinary([BII)J

    move-result-wide v3

    long-to-int v3, v3

    int-to-long v3, v3

    iput-wide v3, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->userId:J

    .line 1099
    add-int/2addr v0, v2

    .line 1100
    invoke-static {p1, v0, v2}, Lorg/apache/commons/compress/archivers/tar/TarUtils;->parseOctalOrBinary([BII)J

    move-result-wide v3

    long-to-int v3, v3

    int-to-long v3, v3

    iput-wide v3, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->groupId:J

    .line 1101
    add-int/2addr v0, v2

    .line 1102
    const/16 v3, 0xc

    invoke-static {p1, v0, v3}, Lorg/apache/commons/compress/archivers/tar/TarUtils;->parseOctalOrBinary([BII)J

    move-result-wide v4

    iput-wide v4, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->size:J

    .line 1103
    add-int/2addr v0, v3

    .line 1104
    invoke-static {p1, v0, v3}, Lorg/apache/commons/compress/archivers/tar/TarUtils;->parseOctalOrBinary([BII)J

    move-result-wide v4

    iput-wide v4, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->modTime:J

    .line 1105
    add-int/2addr v0, v3

    .line 1106
    invoke-static {p1}, Lorg/apache/commons/compress/archivers/tar/TarUtils;->verifyCheckSum([B)Z

    move-result v4

    iput-boolean v4, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->checkSumOK:Z

    .line 1107
    add-int/2addr v0, v2

    .line 1108
    add-int/lit8 v4, v0, 0x1

    .end local v0    # "offset":I
    .local v4, "offset":I
    aget-byte v0, p1, v0

    iput-byte v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->linkFlag:B

    .line 1109
    if-eqz p3, :cond_1

    invoke-static {p1, v4, v1}, Lorg/apache/commons/compress/archivers/tar/TarUtils;->parseName([BII)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    invoke-static {p1, v4, v1, p2}, Lorg/apache/commons/compress/archivers/tar/TarUtils;->parseName([BIILorg/apache/commons/compress/archivers/zip/ZipEncoding;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    iput-object v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->linkName:Ljava/lang/String;

    .line 1111
    add-int/2addr v4, v1

    .line 1112
    const/4 v0, 0x6

    invoke-static {p1, v4, v0}, Lorg/apache/commons/compress/archivers/tar/TarUtils;->parseName([BII)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->magic:Ljava/lang/String;

    .line 1113
    add-int/2addr v4, v0

    .line 1114
    const/4 v0, 0x2

    invoke-static {p1, v4, v0}, Lorg/apache/commons/compress/archivers/tar/TarUtils;->parseName([BII)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->version:Ljava/lang/String;

    .line 1115
    add-int/2addr v4, v0

    .line 1116
    const/16 v1, 0x20

    if-eqz p3, :cond_2

    invoke-static {p1, v4, v1}, Lorg/apache/commons/compress/archivers/tar/TarUtils;->parseName([BII)Ljava/lang/String;

    move-result-object v5

    goto :goto_2

    :cond_2
    invoke-static {p1, v4, v1, p2}, Lorg/apache/commons/compress/archivers/tar/TarUtils;->parseName([BIILorg/apache/commons/compress/archivers/zip/ZipEncoding;)Ljava/lang/String;

    move-result-object v5

    :goto_2
    iput-object v5, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->userName:Ljava/lang/String;

    .line 1118
    add-int/2addr v4, v1

    .line 1119
    if-eqz p3, :cond_3

    invoke-static {p1, v4, v1}, Lorg/apache/commons/compress/archivers/tar/TarUtils;->parseName([BII)Ljava/lang/String;

    move-result-object v5

    goto :goto_3

    :cond_3
    invoke-static {p1, v4, v1, p2}, Lorg/apache/commons/compress/archivers/tar/TarUtils;->parseName([BIILorg/apache/commons/compress/archivers/zip/ZipEncoding;)Ljava/lang/String;

    move-result-object v5

    :goto_3
    iput-object v5, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->groupName:Ljava/lang/String;

    .line 1121
    add-int/2addr v4, v1

    .line 1122
    invoke-static {p1, v4, v2}, Lorg/apache/commons/compress/archivers/tar/TarUtils;->parseOctalOrBinary([BII)J

    move-result-wide v5

    long-to-int v1, v5

    iput v1, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->devMajor:I

    .line 1123
    add-int/2addr v4, v2

    .line 1124
    invoke-static {p1, v4, v2}, Lorg/apache/commons/compress/archivers/tar/TarUtils;->parseOctalOrBinary([BII)J

    move-result-wide v5

    long-to-int v1, v5

    iput v1, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->devMinor:I

    .line 1125
    add-int/2addr v4, v2

    .line 1127
    invoke-direct {p0, p1}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->evaluateType([B)I

    move-result v1

    .line 1128
    .local v1, "type":I
    const/4 v2, 0x4

    if-eq v1, v0, :cond_8

    const-string v0, "/"

    if-eq v1, v2, :cond_6

    .line 1153
    const/16 v2, 0x9b

    if-eqz p3, :cond_4

    invoke-static {p1, v4, v2}, Lorg/apache/commons/compress/archivers/tar/TarUtils;->parseName([BII)Ljava/lang/String;

    move-result-object v2

    goto :goto_4

    :cond_4
    invoke-static {p1, v4, v2, p2}, Lorg/apache/commons/compress/archivers/tar/TarUtils;->parseName([BIILorg/apache/commons/compress/archivers/zip/ZipEncoding;)Ljava/lang/String;

    move-result-object v2

    .line 1158
    .local v2, "prefix":Ljava/lang/String;
    :goto_4
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->name:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 1159
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->name:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->name:Ljava/lang/String;

    .line 1161
    :cond_5
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_9

    .line 1162
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->name:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->name:Ljava/lang/String;

    goto :goto_6

    .line 1143
    .end local v2    # "prefix":Ljava/lang/String;
    :cond_6
    const/16 v2, 0x83

    if-eqz p3, :cond_7

    invoke-static {p1, v4, v2}, Lorg/apache/commons/compress/archivers/tar/TarUtils;->parseName([BII)Ljava/lang/String;

    move-result-object v2

    goto :goto_5

    :cond_7
    invoke-static {p1, v4, v2, p2}, Lorg/apache/commons/compress/archivers/tar/TarUtils;->parseName([BIILorg/apache/commons/compress/archivers/zip/ZipEncoding;)Ljava/lang/String;

    move-result-object v2

    .line 1146
    .local v2, "xstarPrefix":Ljava/lang/String;
    :goto_5
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_9

    .line 1147
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->name:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->name:Ljava/lang/String;

    goto :goto_6

    .line 1130
    .end local v2    # "xstarPrefix":Ljava/lang/String;
    :cond_8
    add-int/lit8 v4, v4, 0xc

    .line 1131
    add-int/2addr v4, v3

    .line 1132
    add-int/2addr v4, v3

    .line 1133
    add-int/2addr v4, v2

    .line 1134
    add-int/lit8 v4, v4, 0x1

    .line 1135
    add-int/lit8 v4, v4, 0x60

    .line 1136
    invoke-static {p1, v4}, Lorg/apache/commons/compress/archivers/tar/TarUtils;->parseBoolean([BI)Z

    move-result v0

    iput-boolean v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->isExtended:Z

    .line 1137
    add-int/lit8 v4, v4, 0x1

    .line 1138
    invoke-static {p1, v4, v3}, Lorg/apache/commons/compress/archivers/tar/TarUtils;->parseOctal([BII)J

    move-result-wide v5

    iput-wide v5, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->realSize:J

    .line 1139
    add-int/2addr v4, v3

    .line 1140
    nop

    .line 1166
    :cond_9
    :goto_6
    return-void
.end method

.method private writeEntryHeaderField(J[BIIZ)I
    .locals 5
    .param p1, "value"    # J
    .param p3, "outbuf"    # [B
    .param p4, "offset"    # I
    .param p5, "length"    # I
    .param p6, "starMode"    # Z

    .line 1043
    if-nez p6, :cond_1

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_0

    const-wide/16 v2, 0x1

    add-int/lit8 v4, p5, -0x1

    mul-int/lit8 v4, v4, 0x3

    shl-long/2addr v2, v4

    cmp-long v2, p1, v2

    if-ltz v2, :cond_1

    .line 1048
    :cond_0
    invoke-static {v0, v1, p3, p4, p5}, Lorg/apache/commons/compress/archivers/tar/TarUtils;->formatLongOctalBytes(J[BII)I

    move-result v0

    return v0

    .line 1050
    :cond_1
    invoke-static {p1, p2, p3, p4, p5}, Lorg/apache/commons/compress/archivers/tar/TarUtils;->formatLongOctalOrBinaryBytes(J[BII)I

    move-result v0

    return v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "it"    # Ljava/lang/Object;

    .line 391
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 394
    :cond_0
    move-object v0, p1

    check-cast v0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;

    invoke-virtual {p0, v0}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->equals(Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;)Z

    move-result v0

    return v0

    .line 392
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;)Z
    .locals 2
    .param p1, "it"    # Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;

    .line 379
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method fillGNUSparse0xData(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1232
    .local p1, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->paxGNUSparse:Z

    .line 1233
    const-string v0, "GNU.sparse.size"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->realSize:J

    .line 1234
    const-string v0, "GNU.sparse.name"

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1236
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->name:Ljava/lang/String;

    .line 1238
    :cond_0
    return-void
.end method

.method fillGNUSparse1xData(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1241
    .local p1, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->paxGNUSparse:Z

    .line 1242
    const-string v0, "GNU.sparse.realsize"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->realSize:J

    .line 1243
    const-string v0, "GNU.sparse.name"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->name:Ljava/lang/String;

    .line 1244
    return-void
.end method

.method fillStarSparseData(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1247
    .local p1, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->starSparse:Z

    .line 1248
    const-string v0, "SCHILY.realsize"

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1249
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->realSize:J

    .line 1251
    :cond_0
    return-void
.end method

.method public getDevMajor()I
    .locals 1

    .line 699
    iget v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->devMajor:I

    return v0
.end method

.method public getDevMinor()I
    .locals 1

    .line 724
    iget v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->devMinor:I

    return v0
.end method

.method public getDirectoryEntries()[Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;
    .locals 7

    .line 949
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->file:Ljava/io/File;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 953
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v0

    .line 954
    .local v0, "list":[Ljava/lang/String;
    if-nez v0, :cond_1

    .line 955
    sget-object v1, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->EMPTY_TAR_ARCHIVE_ENTRIES:[Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;

    return-object v1

    .line 957
    :cond_1
    array-length v1, v0

    new-array v1, v1, [Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;

    .line 959
    .local v1, "result":[Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_2

    .line 960
    new-instance v3, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;

    new-instance v4, Ljava/io/File;

    iget-object v5, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->file:Ljava/io/File;

    aget-object v6, v0, v2

    invoke-direct {v4, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v3, v4}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;-><init>(Ljava/io/File;)V

    aput-object v3, v1, v2

    .line 959
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 963
    .end local v2    # "i":I
    :cond_2
    return-object v1

    .line 950
    .end local v0    # "list":[Ljava/lang/String;
    .end local v1    # "result":[Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;
    :cond_3
    :goto_1
    sget-object v0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->EMPTY_TAR_ARCHIVE_ENTRIES:[Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;

    return-object v0
.end method

.method public getFile()Ljava/io/File;
    .locals 1

    .line 657
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->file:Ljava/io/File;

    return-object v0
.end method

.method public getGroupId()I
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 517
    iget-wide v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->groupId:J

    const-wide/16 v2, -0x1

    and-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public getGroupName()Ljava/lang/String;
    .locals 1

    .line 573
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->groupName:Ljava/lang/String;

    return-object v0
.end method

.method public getLastModifiedDate()Ljava/util/Date;
    .locals 1

    .line 637
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->getModTime()Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getLinkName()Ljava/lang/String;
    .locals 1

    .line 453
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->linkName:Ljava/lang/String;

    return-object v0
.end method

.method public getLongGroupId()J
    .locals 2

    .line 536
    iget-wide v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->groupId:J

    return-wide v0
.end method

.method public getLongUserId()J
    .locals 2

    .line 495
    iget-wide v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->userId:J

    return-wide v0
.end method

.method public getModTime()Ljava/util/Date;
    .locals 5

    .line 632
    new-instance v0, Ljava/util/Date;

    iget-wide v1, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->modTime:J

    const-wide/16 v3, 0x3e8

    mul-long/2addr v1, v3

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    return-object v0
.end method

.method public getMode()I
    .locals 1

    .line 666
    iget v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->mode:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 426
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getRealSize()J
    .locals 2

    .line 758
    iget-wide v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->realSize:J

    return-wide v0
.end method

.method public getSize()J
    .locals 2

    .line 676
    iget-wide v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->size:J

    return-wide v0
.end method

.method public getUserId()I
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 476
    iget-wide v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->userId:J

    const-wide/16 v2, -0x1

    and-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public getUserName()Ljava/lang/String;
    .locals 1

    .line 555
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->userName:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 404
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public isBlockDevice()Z
    .locals 2

    .line 919
    iget-byte v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->linkFlag:B

    const/16 v1, 0x34

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isCharacterDevice()Z
    .locals 2

    .line 909
    iget-byte v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->linkFlag:B

    const/16 v1, 0x33

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isCheckSumOK()Z
    .locals 1

    .line 648
    iget-boolean v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->checkSumOK:Z

    return v0
.end method

.method public isDescendent(Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;)Z
    .locals 2
    .param p1, "desc"    # Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;

    .line 416
    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isDirectory()Z
    .locals 3

    .line 851
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->file:Ljava/io/File;

    if-eqz v0, :cond_0

    .line 852
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    return v0

    .line 855
    :cond_0
    iget-byte v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->linkFlag:B

    const/16 v1, 0x35

    const/4 v2, 0x1

    if-ne v0, v1, :cond_1

    .line 856
    return v2

    .line 859
    :cond_1
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->isPaxHeader()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->isGlobalPaxHeader()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 860
    return v2

    .line 863
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public isExtended()Z
    .locals 1

    .line 749
    iget-boolean v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->isExtended:Z

    return v0
.end method

.method public isFIFO()Z
    .locals 2

    .line 929
    iget-byte v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->linkFlag:B

    const/16 v1, 0x36

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isFile()Z
    .locals 3

    .line 873
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->file:Ljava/io/File;

    if-eqz v0, :cond_0

    .line 874
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v0

    return v0

    .line 876
    :cond_0
    iget-byte v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->linkFlag:B

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    const/16 v2, 0x30

    if-ne v0, v2, :cond_1

    goto :goto_0

    .line 879
    :cond_1
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    xor-int/2addr v0, v1

    return v0

    .line 877
    :cond_2
    :goto_0
    return v1
.end method

.method public isGNULongLinkEntry()Z
    .locals 2

    .line 808
    iget-byte v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->linkFlag:B

    const/16 v1, 0x4b

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isGNULongNameEntry()Z
    .locals 2

    .line 817
    iget-byte v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->linkFlag:B

    const/16 v1, 0x4c

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isGNUSparse()Z
    .locals 1

    .line 767
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->isOldGNUSparse()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->isPaxGNUSparse()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public isGlobalPaxHeader()Z
    .locals 2

    .line 841
    iget-byte v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->linkFlag:B

    const/16 v1, 0x67

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isLink()Z
    .locals 2

    .line 899
    iget-byte v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->linkFlag:B

    const/16 v1, 0x31

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isOldGNUSparse()Z
    .locals 2

    .line 778
    iget-byte v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->linkFlag:B

    const/16 v1, 0x53

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isPaxGNUSparse()Z
    .locals 1

    .line 789
    iget-boolean v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->paxGNUSparse:Z

    return v0
.end method

.method public isPaxHeader()Z
    .locals 2

    .line 829
    iget-byte v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->linkFlag:B

    const/16 v1, 0x78

    if-eq v0, v1, :cond_1

    const/16 v1, 0x58

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public isSparse()Z
    .locals 1

    .line 939
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->isGNUSparse()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->isStarSparse()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public isStarSparse()Z
    .locals 1

    .line 799
    iget-boolean v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->starSparse:Z

    return v0
.end method

.method public isSymbolicLink()Z
    .locals 2

    .line 889
    iget-byte v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->linkFlag:B

    const/16 v1, 0x32

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public parseTarHeader([B)V
    .locals 3
    .param p1, "header"    # [B

    .line 1062
    :try_start_0
    sget-object v0, Lorg/apache/commons/compress/archivers/tar/TarUtils;->DEFAULT_ENCODING:Lorg/apache/commons/compress/archivers/zip/ZipEncoding;

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->parseTarHeader([BLorg/apache/commons/compress/archivers/zip/ZipEncoding;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1070
    goto :goto_0

    .line 1063
    :catch_0
    move-exception v0

    .line 1065
    .local v0, "ex":Ljava/io/IOException;
    :try_start_1
    sget-object v1, Lorg/apache/commons/compress/archivers/tar/TarUtils;->DEFAULT_ENCODING:Lorg/apache/commons/compress/archivers/zip/ZipEncoding;

    const/4 v2, 0x1

    invoke-direct {p0, p1, v1, v2}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->parseTarHeader([BLorg/apache/commons/compress/archivers/zip/ZipEncoding;Z)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1069
    nop

    .line 1071
    .end local v0    # "ex":Ljava/io/IOException;
    :goto_0
    return-void

    .line 1066
    .restart local v0    # "ex":Ljava/io/IOException;
    :catch_1
    move-exception v1

    .line 1068
    .local v1, "ex2":Ljava/io/IOException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public parseTarHeader([BLorg/apache/commons/compress/archivers/zip/ZipEncoding;)V
    .locals 1
    .param p1, "header"    # [B
    .param p2, "encoding"    # Lorg/apache/commons/compress/archivers/zip/ZipEncoding;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1085
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->parseTarHeader([BLorg/apache/commons/compress/archivers/zip/ZipEncoding;Z)V

    .line 1086
    return-void
.end method

.method public setDevMajor(I)V
    .locals 3
    .param p1, "devNo"    # I

    .line 710
    if-ltz p1, :cond_0

    .line 714
    iput p1, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->devMajor:I

    .line 715
    return-void

    .line 711
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Major device number is out of range: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setDevMinor(I)V
    .locals 3
    .param p1, "devNo"    # I

    .line 735
    if-ltz p1, :cond_0

    .line 739
    iput p1, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->devMinor:I

    .line 740
    return-void

    .line 736
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Minor device number is out of range: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setGroupId(I)V
    .locals 2
    .param p1, "groupId"    # I

    .line 526
    int-to-long v0, p1

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->setGroupId(J)V

    .line 527
    return-void
.end method

.method public setGroupId(J)V
    .locals 0
    .param p1, "groupId"    # J

    .line 546
    iput-wide p1, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->groupId:J

    .line 547
    return-void
.end method

.method public setGroupName(Ljava/lang/String;)V
    .locals 0
    .param p1, "groupName"    # Ljava/lang/String;

    .line 582
    iput-object p1, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->groupName:Ljava/lang/String;

    .line 583
    return-void
.end method

.method public setIds(II)V
    .locals 0
    .param p1, "userId"    # I
    .param p2, "groupId"    # I

    .line 592
    invoke-virtual {p0, p1}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->setUserId(I)V

    .line 593
    invoke-virtual {p0, p2}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->setGroupId(I)V

    .line 594
    return-void
.end method

.method public setLinkName(Ljava/lang/String;)V
    .locals 0
    .param p1, "link"    # Ljava/lang/String;

    .line 464
    iput-object p1, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->linkName:Ljava/lang/String;

    .line 465
    return-void
.end method

.method public setModTime(J)V
    .locals 2
    .param p1, "time"    # J

    .line 614
    const-wide/16 v0, 0x3e8

    div-long v0, p1, v0

    iput-wide v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->modTime:J

    .line 615
    return-void
.end method

.method public setModTime(Ljava/util/Date;)V
    .locals 4
    .param p1, "time"    # Ljava/util/Date;

    .line 623
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    iput-wide v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->modTime:J

    .line 624
    return-void
.end method

.method public setMode(I)V
    .locals 0
    .param p1, "mode"    # I

    .line 444
    iput p1, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->mode:I

    .line 445
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 435
    iget-boolean v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->preserveLeadingSlashes:Z

    invoke-static {p1, v0}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->normalizeFileName(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->name:Ljava/lang/String;

    .line 436
    return-void
.end method

.method public setNames(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "userName"    # Ljava/lang/String;
    .param p2, "groupName"    # Ljava/lang/String;

    .line 603
    invoke-virtual {p0, p1}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->setUserName(Ljava/lang/String;)V

    .line 604
    invoke-virtual {p0, p2}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->setGroupName(Ljava/lang/String;)V

    .line 605
    return-void
.end method

.method public setSize(J)V
    .locals 3
    .param p1, "size"    # J

    .line 686
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    .line 689
    iput-wide p1, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->size:J

    .line 690
    return-void

    .line 687
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Size is out of range: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setUserId(I)V
    .locals 2
    .param p1, "userId"    # I

    .line 485
    int-to-long v0, p1

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->setUserId(J)V

    .line 486
    return-void
.end method

.method public setUserId(J)V
    .locals 0
    .param p1, "userId"    # J

    .line 505
    iput-wide p1, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->userId:J

    .line 506
    return-void
.end method

.method public setUserName(Ljava/lang/String;)V
    .locals 0
    .param p1, "userName"    # Ljava/lang/String;

    .line 564
    iput-object p1, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->userName:Ljava/lang/String;

    .line 565
    return-void
.end method

.method public writeEntryHeader([B)V
    .locals 3
    .param p1, "outbuf"    # [B

    .line 975
    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Lorg/apache/commons/compress/archivers/tar/TarUtils;->DEFAULT_ENCODING:Lorg/apache/commons/compress/archivers/zip/ZipEncoding;

    invoke-virtual {p0, p1, v1, v0}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->writeEntryHeader([BLorg/apache/commons/compress/archivers/zip/ZipEncoding;Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 983
    goto :goto_0

    .line 976
    :catch_0
    move-exception v1

    .line 978
    .local v1, "ex":Ljava/io/IOException;
    :try_start_1
    sget-object v2, Lorg/apache/commons/compress/archivers/tar/TarUtils;->FALLBACK_ENCODING:Lorg/apache/commons/compress/archivers/zip/ZipEncoding;

    invoke-virtual {p0, p1, v2, v0}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->writeEntryHeader([BLorg/apache/commons/compress/archivers/zip/ZipEncoding;Z)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 982
    nop

    .line 984
    .end local v1    # "ex":Ljava/io/IOException;
    :goto_0
    return-void

    .line 979
    .restart local v1    # "ex":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 981
    .local v0, "ex2":Ljava/io/IOException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public writeEntryHeader([BLorg/apache/commons/compress/archivers/zip/ZipEncoding;Z)V
    .locals 13
    .param p1, "outbuf"    # [B
    .param p2, "encoding"    # Lorg/apache/commons/compress/archivers/zip/ZipEncoding;
    .param p3, "starMode"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 999
    move-object v7, p0

    move-object v8, p1

    move-object v9, p2

    const/4 v0, 0x0

    .line 1001
    .local v0, "offset":I
    iget-object v1, v7, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->name:Ljava/lang/String;

    const/16 v10, 0x64

    invoke-static {v1, p1, v0, v10, p2}, Lorg/apache/commons/compress/archivers/tar/TarUtils;->formatNameBytes(Ljava/lang/String;[BIILorg/apache/commons/compress/archivers/zip/ZipEncoding;)I

    move-result v11

    .line 1003
    .end local v0    # "offset":I
    .local v11, "offset":I
    iget v0, v7, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->mode:I

    int-to-long v1, v0

    const/16 v5, 0x8

    move-object v0, p0

    move-object v3, p1

    move v4, v11

    move/from16 v6, p3

    invoke-direct/range {v0 .. v6}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->writeEntryHeaderField(J[BIIZ)I

    move-result v11

    .line 1004
    iget-wide v1, v7, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->userId:J

    move v4, v11

    invoke-direct/range {v0 .. v6}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->writeEntryHeaderField(J[BIIZ)I

    move-result v11

    .line 1006
    iget-wide v1, v7, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->groupId:J

    move v4, v11

    invoke-direct/range {v0 .. v6}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->writeEntryHeaderField(J[BIIZ)I

    move-result v11

    .line 1008
    iget-wide v1, v7, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->size:J

    const/16 v5, 0xc

    move v4, v11

    invoke-direct/range {v0 .. v6}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->writeEntryHeaderField(J[BIIZ)I

    move-result v11

    .line 1009
    iget-wide v1, v7, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->modTime:J

    move v4, v11

    invoke-direct/range {v0 .. v6}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->writeEntryHeaderField(J[BIIZ)I

    move-result v0

    .line 1012
    .end local v11    # "offset":I
    .restart local v0    # "offset":I
    move v11, v0

    .line 1014
    .local v11, "csOffset":I
    const/4 v1, 0x0

    .local v1, "c":I
    :goto_0
    const/16 v12, 0x8

    const/16 v2, 0x20

    if-ge v1, v12, :cond_0

    .line 1015
    add-int/lit8 v3, v0, 0x1

    .end local v0    # "offset":I
    .local v3, "offset":I
    aput-byte v2, v8, v0

    .line 1014
    add-int/lit8 v1, v1, 0x1

    move v0, v3

    goto :goto_0

    .line 1018
    .end local v1    # "c":I
    .end local v3    # "offset":I
    .restart local v0    # "offset":I
    :cond_0
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "offset":I
    .local v1, "offset":I
    iget-byte v3, v7, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->linkFlag:B

    aput-byte v3, v8, v0

    .line 1019
    iget-object v0, v7, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->linkName:Ljava/lang/String;

    invoke-static {v0, p1, v1, v10, p2}, Lorg/apache/commons/compress/archivers/tar/TarUtils;->formatNameBytes(Ljava/lang/String;[BIILorg/apache/commons/compress/archivers/zip/ZipEncoding;)I

    move-result v0

    .line 1021
    .end local v1    # "offset":I
    .restart local v0    # "offset":I
    iget-object v1, v7, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->magic:Ljava/lang/String;

    const/4 v3, 0x6

    invoke-static {v1, p1, v0, v3}, Lorg/apache/commons/compress/archivers/tar/TarUtils;->formatNameBytes(Ljava/lang/String;[BII)I

    move-result v0

    .line 1022
    iget-object v1, v7, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->version:Ljava/lang/String;

    const/4 v3, 0x2

    invoke-static {v1, p1, v0, v3}, Lorg/apache/commons/compress/archivers/tar/TarUtils;->formatNameBytes(Ljava/lang/String;[BII)I

    move-result v0

    .line 1023
    iget-object v1, v7, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->userName:Ljava/lang/String;

    invoke-static {v1, p1, v0, v2, p2}, Lorg/apache/commons/compress/archivers/tar/TarUtils;->formatNameBytes(Ljava/lang/String;[BIILorg/apache/commons/compress/archivers/zip/ZipEncoding;)I

    move-result v0

    .line 1025
    iget-object v1, v7, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->groupName:Ljava/lang/String;

    invoke-static {v1, p1, v0, v2, p2}, Lorg/apache/commons/compress/archivers/tar/TarUtils;->formatNameBytes(Ljava/lang/String;[BIILorg/apache/commons/compress/archivers/zip/ZipEncoding;)I

    move-result v10

    .line 1027
    .end local v0    # "offset":I
    .local v10, "offset":I
    iget v0, v7, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->devMajor:I

    int-to-long v1, v0

    const/16 v5, 0x8

    move-object v0, p0

    move-object v3, p1

    move v4, v10

    move/from16 v6, p3

    invoke-direct/range {v0 .. v6}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->writeEntryHeaderField(J[BIIZ)I

    move-result v10

    .line 1029
    iget v0, v7, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->devMinor:I

    int-to-long v1, v0

    move-object v0, p0

    move v4, v10

    invoke-direct/range {v0 .. v6}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->writeEntryHeaderField(J[BIIZ)I

    move-result v0

    .line 1032
    .end local v10    # "offset":I
    .restart local v0    # "offset":I
    :goto_1
    array-length v1, v8

    if-ge v0, v1, :cond_1

    .line 1033
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "offset":I
    .restart local v1    # "offset":I
    const/4 v2, 0x0

    aput-byte v2, v8, v0

    move v0, v1

    goto :goto_1

    .line 1036
    .end local v1    # "offset":I
    .restart local v0    # "offset":I
    :cond_1
    invoke-static {p1}, Lorg/apache/commons/compress/archivers/tar/TarUtils;->computeCheckSum([B)J

    move-result-wide v1

    .line 1038
    .local v1, "chk":J
    invoke-static {v1, v2, p1, v11, v12}, Lorg/apache/commons/compress/archivers/tar/TarUtils;->formatCheckSumOctalBytes(J[BII)I

    .line 1039
    return-void
.end method
