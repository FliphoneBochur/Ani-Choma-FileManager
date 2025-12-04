.class final Lorg/apache/commons/compress/archivers/zip/Simple8BitZipEncoding$Simple8BitChar;
.super Ljava/lang/Object;
.source "Simple8BitZipEncoding.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/compress/archivers/zip/Simple8BitZipEncoding;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Simple8BitChar"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lorg/apache/commons/compress/archivers/zip/Simple8BitZipEncoding$Simple8BitChar;",
        ">;"
    }
.end annotation


# instance fields
.field public final code:B

.field public final unicode:C


# direct methods
.method constructor <init>(BC)V
    .locals 0
    .param p1, "code"    # B
    .param p2, "unicode"    # C

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-byte p1, p0, Lorg/apache/commons/compress/archivers/zip/Simple8BitZipEncoding$Simple8BitChar;->code:B

    .line 59
    iput-char p2, p0, Lorg/apache/commons/compress/archivers/zip/Simple8BitZipEncoding$Simple8BitChar;->unicode:C

    .line 60
    return-void
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 53
    check-cast p1, Lorg/apache/commons/compress/archivers/zip/Simple8BitZipEncoding$Simple8BitChar;

    invoke-virtual {p0, p1}, Lorg/apache/commons/compress/archivers/zip/Simple8BitZipEncoding$Simple8BitChar;->compareTo(Lorg/apache/commons/compress/archivers/zip/Simple8BitZipEncoding$Simple8BitChar;)I

    move-result p1

    return p1
.end method

.method public compareTo(Lorg/apache/commons/compress/archivers/zip/Simple8BitZipEncoding$Simple8BitChar;)I
    .locals 2
    .param p1, "a"    # Lorg/apache/commons/compress/archivers/zip/Simple8BitZipEncoding$Simple8BitChar;

    .line 64
    iget-char v0, p0, Lorg/apache/commons/compress/archivers/zip/Simple8BitZipEncoding$Simple8BitChar;->unicode:C

    iget-char v1, p1, Lorg/apache/commons/compress/archivers/zip/Simple8BitZipEncoding$Simple8BitChar;->unicode:C

    sub-int/2addr v0, v1

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .line 75
    instance-of v0, p1, Lorg/apache/commons/compress/archivers/zip/Simple8BitZipEncoding$Simple8BitChar;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 76
    move-object v0, p1

    check-cast v0, Lorg/apache/commons/compress/archivers/zip/Simple8BitZipEncoding$Simple8BitChar;

    .line 77
    .local v0, "other":Lorg/apache/commons/compress/archivers/zip/Simple8BitZipEncoding$Simple8BitChar;
    iget-char v2, p0, Lorg/apache/commons/compress/archivers/zip/Simple8BitZipEncoding$Simple8BitChar;->unicode:C

    iget-char v3, v0, Lorg/apache/commons/compress/archivers/zip/Simple8BitZipEncoding$Simple8BitChar;->unicode:C

    if-ne v2, v3, :cond_0

    iget-byte v2, p0, Lorg/apache/commons/compress/archivers/zip/Simple8BitZipEncoding$Simple8BitChar;->code:B

    iget-byte v3, v0, Lorg/apache/commons/compress/archivers/zip/Simple8BitZipEncoding$Simple8BitChar;->code:B

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    .line 79
    .end local v0    # "other":Lorg/apache/commons/compress/archivers/zip/Simple8BitZipEncoding$Simple8BitChar;
    :cond_1
    return v1
.end method

.method public hashCode()I
    .locals 1

    .line 84
    iget-char v0, p0, Lorg/apache/commons/compress/archivers/zip/Simple8BitZipEncoding$Simple8BitChar;->unicode:C

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 69
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-char v1, p0, Lorg/apache/commons/compress/archivers/zip/Simple8BitZipEncoding$Simple8BitChar;->unicode:C

    const v2, 0xffff

    and-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "->0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v1, p0, Lorg/apache/commons/compress/archivers/zip/Simple8BitZipEncoding$Simple8BitChar;->code:B

    and-int/lit16 v1, v1, 0xff

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
