.class public Lcom/github/junrar/io/ReadOnlyAccessInputStream;
.super Ljava/io/InputStream;
.source "ReadOnlyAccessInputStream.java"


# instance fields
.field private curPos:J

.field private final endPos:J

.field private file:Lcom/github/junrar/io/IReadOnlyAccess;


# direct methods
.method public constructor <init>(Lcom/github/junrar/io/IReadOnlyAccess;JJ)V
    .locals 0
    .param p1, "file"    # Lcom/github/junrar/io/IReadOnlyAccess;
    .param p2, "startPos"    # J
    .param p4, "endPos"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 38
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/github/junrar/io/ReadOnlyAccessInputStream;->file:Lcom/github/junrar/io/IReadOnlyAccess;

    .line 40
    iput-wide p2, p0, Lcom/github/junrar/io/ReadOnlyAccessInputStream;->curPos:J

    .line 41
    iput-wide p4, p0, Lcom/github/junrar/io/ReadOnlyAccessInputStream;->endPos:J

    .line 42
    invoke-interface {p1, p2, p3}, Lcom/github/junrar/io/IReadOnlyAccess;->setPosition(J)V

    .line 43
    return-void
.end method


# virtual methods
.method public read()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 47
    iget-wide v0, p0, Lcom/github/junrar/io/ReadOnlyAccessInputStream;->curPos:J

    iget-wide v2, p0, Lcom/github/junrar/io/ReadOnlyAccessInputStream;->endPos:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 48
    const/4 v0, -0x1

    return v0

    .line 51
    :cond_0
    iget-object v0, p0, Lcom/github/junrar/io/ReadOnlyAccessInputStream;->file:Lcom/github/junrar/io/IReadOnlyAccess;

    invoke-interface {v0}, Lcom/github/junrar/io/IReadOnlyAccess;->read()I

    move-result v0

    .line 52
    .local v0, "b":I
    iget-wide v1, p0, Lcom/github/junrar/io/ReadOnlyAccessInputStream;->curPos:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/github/junrar/io/ReadOnlyAccessInputStream;->curPos:J

    .line 53
    return v0
.end method

.method public read([B)I
    .locals 2
    .param p1, "b"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 73
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/github/junrar/io/ReadOnlyAccessInputStream;->read([BII)I

    move-result v0

    return v0
.end method

.method public read([BII)I
    .locals 7
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 59
    if-nez p3, :cond_0

    .line 60
    const/4 v0, 0x0

    return v0

    .line 62
    :cond_0
    iget-wide v0, p0, Lcom/github/junrar/io/ReadOnlyAccessInputStream;->curPos:J

    iget-wide v2, p0, Lcom/github/junrar/io/ReadOnlyAccessInputStream;->endPos:J

    cmp-long v4, v0, v2

    if-nez v4, :cond_1

    .line 63
    const/4 v0, -0x1

    return v0

    .line 65
    :cond_1
    iget-object v4, p0, Lcom/github/junrar/io/ReadOnlyAccessInputStream;->file:Lcom/github/junrar/io/IReadOnlyAccess;

    int-to-long v5, p3

    sub-long/2addr v2, v0

    invoke-static {v5, v6, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int v0, v0

    invoke-interface {v4, p1, p2, v0}, Lcom/github/junrar/io/IReadOnlyAccess;->read([BII)I

    move-result v0

    .line 67
    .local v0, "bytesRead":I
    iget-wide v1, p0, Lcom/github/junrar/io/ReadOnlyAccessInputStream;->curPos:J

    int-to-long v3, v0

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/github/junrar/io/ReadOnlyAccessInputStream;->curPos:J

    .line 68
    return v0
.end method
