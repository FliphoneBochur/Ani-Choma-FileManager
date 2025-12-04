.class Lorg/apache/commons/compress/archivers/sevenz/AES256SHA256Decoder$1;
.super Ljava/io/InputStream;
.source "AES256SHA256Decoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/commons/compress/archivers/sevenz/AES256SHA256Decoder;->decode(Ljava/lang/String;Ljava/io/InputStream;JLorg/apache/commons/compress/archivers/sevenz/Coder;[B)Ljava/io/InputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private cipherInputStream:Ljavax/crypto/CipherInputStream;

.field private isInitialized:Z

.field final synthetic this$0:Lorg/apache/commons/compress/archivers/sevenz/AES256SHA256Decoder;

.field final synthetic val$archiveName:Ljava/lang/String;

.field final synthetic val$coder:Lorg/apache/commons/compress/archivers/sevenz/Coder;

.field final synthetic val$in:Ljava/io/InputStream;

.field final synthetic val$passwordBytes:[B


# direct methods
.method constructor <init>(Lorg/apache/commons/compress/archivers/sevenz/AES256SHA256Decoder;Lorg/apache/commons/compress/archivers/sevenz/Coder;Ljava/lang/String;[BLjava/io/InputStream;)V
    .locals 0

    .line 36
    iput-object p1, p0, Lorg/apache/commons/compress/archivers/sevenz/AES256SHA256Decoder$1;->this$0:Lorg/apache/commons/compress/archivers/sevenz/AES256SHA256Decoder;

    iput-object p2, p0, Lorg/apache/commons/compress/archivers/sevenz/AES256SHA256Decoder$1;->val$coder:Lorg/apache/commons/compress/archivers/sevenz/Coder;

    iput-object p3, p0, Lorg/apache/commons/compress/archivers/sevenz/AES256SHA256Decoder$1;->val$archiveName:Ljava/lang/String;

    iput-object p4, p0, Lorg/apache/commons/compress/archivers/sevenz/AES256SHA256Decoder$1;->val$passwordBytes:[B

    iput-object p5, p0, Lorg/apache/commons/compress/archivers/sevenz/AES256SHA256Decoder$1;->val$in:Ljava/io/InputStream;

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 37
    const/4 p1, 0x0

    iput-boolean p1, p0, Lorg/apache/commons/compress/archivers/sevenz/AES256SHA256Decoder$1;->isInitialized:Z

    .line 38
    const/4 p1, 0x0

    iput-object p1, p0, Lorg/apache/commons/compress/archivers/sevenz/AES256SHA256Decoder$1;->cipherInputStream:Ljavax/crypto/CipherInputStream;

    return-void
.end method

.method private init()Ljavax/crypto/CipherInputStream;
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 41
    move-object/from16 v1, p0

    iget-boolean v0, v1, Lorg/apache/commons/compress/archivers/sevenz/AES256SHA256Decoder$1;->isInitialized:Z

    if-eqz v0, :cond_0

    .line 42
    iget-object v0, v1, Lorg/apache/commons/compress/archivers/sevenz/AES256SHA256Decoder$1;->cipherInputStream:Ljavax/crypto/CipherInputStream;

    return-object v0

    .line 44
    :cond_0
    iget-object v0, v1, Lorg/apache/commons/compress/archivers/sevenz/AES256SHA256Decoder$1;->val$coder:Lorg/apache/commons/compress/archivers/sevenz/Coder;

    iget-object v0, v0, Lorg/apache/commons/compress/archivers/sevenz/Coder;->properties:[B

    const/4 v2, 0x0

    aget-byte v0, v0, v2

    and-int/lit16 v3, v0, 0xff

    .line 45
    .local v3, "byte0":I
    and-int/lit8 v4, v3, 0x3f

    .line 46
    .local v4, "numCyclesPower":I
    iget-object v0, v1, Lorg/apache/commons/compress/archivers/sevenz/AES256SHA256Decoder$1;->val$coder:Lorg/apache/commons/compress/archivers/sevenz/Coder;

    iget-object v0, v0, Lorg/apache/commons/compress/archivers/sevenz/Coder;->properties:[B

    const/4 v5, 0x1

    aget-byte v0, v0, v5

    and-int/lit16 v6, v0, 0xff

    .line 47
    .local v6, "byte1":I
    shr-int/lit8 v0, v3, 0x6

    and-int/2addr v0, v5

    and-int/lit8 v7, v6, 0xf

    add-int/2addr v7, v0

    .line 48
    .local v7, "ivSize":I
    shr-int/lit8 v0, v3, 0x7

    and-int/2addr v0, v5

    shr-int/lit8 v8, v6, 0x4

    add-int/2addr v8, v0

    .line 49
    .local v8, "saltSize":I
    add-int/lit8 v0, v8, 0x2

    add-int/2addr v0, v7

    iget-object v9, v1, Lorg/apache/commons/compress/archivers/sevenz/AES256SHA256Decoder$1;->val$coder:Lorg/apache/commons/compress/archivers/sevenz/Coder;

    iget-object v9, v9, Lorg/apache/commons/compress/archivers/sevenz/Coder;->properties:[B

    array-length v9, v9

    if-gt v0, v9, :cond_6

    .line 52
    new-array v9, v8, [B

    .line 53
    .local v9, "salt":[B
    iget-object v0, v1, Lorg/apache/commons/compress/archivers/sevenz/AES256SHA256Decoder$1;->val$coder:Lorg/apache/commons/compress/archivers/sevenz/Coder;

    iget-object v0, v0, Lorg/apache/commons/compress/archivers/sevenz/Coder;->properties:[B

    const/4 v10, 0x2

    invoke-static {v0, v10, v9, v2, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 54
    const/16 v0, 0x10

    new-array v11, v0, [B

    .line 55
    .local v11, "iv":[B
    iget-object v0, v1, Lorg/apache/commons/compress/archivers/sevenz/AES256SHA256Decoder$1;->val$coder:Lorg/apache/commons/compress/archivers/sevenz/Coder;

    iget-object v0, v0, Lorg/apache/commons/compress/archivers/sevenz/Coder;->properties:[B

    add-int/lit8 v12, v8, 0x2

    invoke-static {v0, v12, v11, v2, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 57
    iget-object v0, v1, Lorg/apache/commons/compress/archivers/sevenz/AES256SHA256Decoder$1;->val$passwordBytes:[B

    if-eqz v0, :cond_5

    .line 61
    const/16 v0, 0x3f

    if-ne v4, v0, :cond_1

    .line 62
    const/16 v0, 0x20

    new-array v0, v0, [B

    .line 63
    .local v0, "aesKeyBytes":[B
    invoke-static {v9, v2, v0, v2, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 64
    iget-object v12, v1, Lorg/apache/commons/compress/archivers/sevenz/AES256SHA256Decoder$1;->val$passwordBytes:[B

    array-length v13, v12

    array-length v14, v0

    sub-int/2addr v14, v8

    invoke-static {v13, v14}, Ljava/lang/Math;->min(II)I

    move-result v13

    invoke-static {v12, v2, v0, v8, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v10, v0

    goto :goto_3

    .line 69
    .end local v0    # "aesKeyBytes":[B
    :cond_1
    :try_start_0
    const-string v0, "SHA-256"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1

    .line 73
    .local v0, "digest":Ljava/security/MessageDigest;
    nop

    .line 74
    const/16 v2, 0x8

    new-array v2, v2, [B

    .line 75
    .local v2, "extra":[B
    const-wide/16 v12, 0x0

    .local v12, "j":J
    :goto_0
    const-wide/16 v14, 0x1

    shl-long v16, v14, v4

    cmp-long v16, v12, v16

    if-gez v16, :cond_4

    .line 76
    invoke-virtual {v0, v9}, Ljava/security/MessageDigest;->update([B)V

    .line 77
    iget-object v10, v1, Lorg/apache/commons/compress/archivers/sevenz/AES256SHA256Decoder$1;->val$passwordBytes:[B

    invoke-virtual {v0, v10}, Ljava/security/MessageDigest;->update([B)V

    .line 78
    invoke-virtual {v0, v2}, Ljava/security/MessageDigest;->update([B)V

    .line 79
    const/4 v10, 0x0

    .local v10, "k":I
    :goto_1
    array-length v14, v2

    if-ge v10, v14, :cond_3

    .line 80
    aget-byte v14, v2, v10

    add-int/2addr v14, v5

    int-to-byte v14, v14

    aput-byte v14, v2, v10

    .line 81
    aget-byte v14, v2, v10

    if-eqz v14, :cond_2

    .line 82
    goto :goto_2

    .line 79
    :cond_2
    add-int/lit8 v10, v10, 0x1

    const-wide/16 v14, 0x1

    goto :goto_1

    .line 75
    .end local v10    # "k":I
    :cond_3
    :goto_2
    const-wide/16 v14, 0x1

    add-long/2addr v12, v14

    const/4 v10, 0x2

    goto :goto_0

    .line 86
    .end local v12    # "j":J
    :cond_4
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v10

    .line 89
    .end local v0    # "digest":Ljava/security/MessageDigest;
    .end local v2    # "extra":[B
    .local v10, "aesKeyBytes":[B
    :goto_3
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    const-string v2, "AES"

    invoke-direct {v0, v10, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    move-object v2, v0

    .line 91
    .local v2, "aesKey":Ljavax/crypto/SecretKey;
    :try_start_1
    const-string v0, "AES/CBC/NoPadding"

    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 92
    .local v0, "cipher":Ljavax/crypto/Cipher;
    new-instance v12, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v12, v11}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    const/4 v13, 0x2

    invoke-virtual {v0, v13, v2, v12}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 93
    new-instance v12, Ljavax/crypto/CipherInputStream;

    iget-object v13, v1, Lorg/apache/commons/compress/archivers/sevenz/AES256SHA256Decoder$1;->val$in:Ljava/io/InputStream;

    invoke-direct {v12, v13, v0}, Ljavax/crypto/CipherInputStream;-><init>(Ljava/io/InputStream;Ljavax/crypto/Cipher;)V

    iput-object v12, v1, Lorg/apache/commons/compress/archivers/sevenz/AES256SHA256Decoder$1;->cipherInputStream:Ljavax/crypto/CipherInputStream;

    .line 94
    iput-boolean v5, v1, Lorg/apache/commons/compress/archivers/sevenz/AES256SHA256Decoder$1;->isInitialized:Z
    :try_end_1
    .catch Ljava/security/GeneralSecurityException; {:try_start_1 .. :try_end_1} :catch_0

    .line 95
    return-object v12

    .line 96
    .end local v0    # "cipher":Ljavax/crypto/Cipher;
    :catch_0
    move-exception v0

    .line 97
    .local v0, "generalSecurityException":Ljava/security/GeneralSecurityException;
    new-instance v5, Ljava/io/IOException;

    const-string v12, "Decryption error (do you have the JCE Unlimited Strength Jurisdiction Policy Files installed?)"

    invoke-direct {v5, v12, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    .line 70
    .end local v0    # "generalSecurityException":Ljava/security/GeneralSecurityException;
    .end local v2    # "aesKey":Ljavax/crypto/SecretKey;
    .end local v10    # "aesKeyBytes":[B
    :catch_1
    move-exception v0

    .line 71
    .local v0, "noSuchAlgorithmException":Ljava/security/NoSuchAlgorithmException;
    new-instance v2, Ljava/io/IOException;

    const-string v5, "SHA-256 is unsupported by your Java implementation"

    invoke-direct {v2, v5, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 58
    .end local v0    # "noSuchAlgorithmException":Ljava/security/NoSuchAlgorithmException;
    :cond_5
    new-instance v0, Lorg/apache/commons/compress/PasswordRequiredException;

    iget-object v2, v1, Lorg/apache/commons/compress/archivers/sevenz/AES256SHA256Decoder$1;->val$archiveName:Ljava/lang/String;

    invoke-direct {v0, v2}, Lorg/apache/commons/compress/PasswordRequiredException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 50
    .end local v9    # "salt":[B
    .end local v11    # "iv":[B
    :cond_6
    new-instance v0, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Salt size + IV size too long in "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lorg/apache/commons/compress/archivers/sevenz/AES256SHA256Decoder$1;->val$archiveName:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public close()V
    .locals 0

    .line 115
    return-void
.end method

.method public read()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 105
    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/sevenz/AES256SHA256Decoder$1;->init()Ljavax/crypto/CipherInputStream;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/crypto/CipherInputStream;->read()I

    move-result v0

    return v0
.end method

.method public read([BII)I
    .locals 1
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 110
    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/sevenz/AES256SHA256Decoder$1;->init()Ljavax/crypto/CipherInputStream;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Ljavax/crypto/CipherInputStream;->read([BII)I

    move-result v0

    return v0
.end method
