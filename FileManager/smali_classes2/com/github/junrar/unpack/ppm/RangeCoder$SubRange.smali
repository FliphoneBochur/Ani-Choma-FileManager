.class public Lcom/github/junrar/unpack/ppm/RangeCoder$SubRange;
.super Ljava/lang/Object;
.source "RangeCoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/github/junrar/unpack/ppm/RangeCoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SubRange"
.end annotation


# instance fields
.field private highCount:J

.field private lowCount:J

.field private scale:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getHighCount()J
    .locals 2

    .line 131
    iget-wide v0, p0, Lcom/github/junrar/unpack/ppm/RangeCoder$SubRange;->highCount:J

    return-wide v0
.end method

.method public getLowCount()J
    .locals 4

    .line 141
    iget-wide v0, p0, Lcom/github/junrar/unpack/ppm/RangeCoder$SubRange;->lowCount:J

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    return-wide v0
.end method

.method public getScale()J
    .locals 2

    .line 151
    iget-wide v0, p0, Lcom/github/junrar/unpack/ppm/RangeCoder$SubRange;->scale:J

    return-wide v0
.end method

.method public incScale(I)V
    .locals 4
    .param p1, "dScale"    # I

    .line 160
    invoke-virtual {p0}, Lcom/github/junrar/unpack/ppm/RangeCoder$SubRange;->getScale()J

    move-result-wide v0

    int-to-long v2, p1

    add-long/2addr v0, v2

    invoke-virtual {p0, v0, v1}, Lcom/github/junrar/unpack/ppm/RangeCoder$SubRange;->setScale(J)V

    .line 161
    return-void
.end method

.method public setHighCount(J)V
    .locals 2
    .param p1, "highCount"    # J

    .line 136
    const-wide v0, 0xffffffffL

    and-long/2addr v0, p1

    iput-wide v0, p0, Lcom/github/junrar/unpack/ppm/RangeCoder$SubRange;->highCount:J

    .line 137
    return-void
.end method

.method public setLowCount(J)V
    .locals 2
    .param p1, "lowCount"    # J

    .line 146
    const-wide v0, 0xffffffffL

    and-long/2addr v0, p1

    iput-wide v0, p0, Lcom/github/junrar/unpack/ppm/RangeCoder$SubRange;->lowCount:J

    .line 147
    return-void
.end method

.method public setScale(J)V
    .locals 2
    .param p1, "scale"    # J

    .line 156
    const-wide v0, 0xffffffffL

    and-long/2addr v0, p1

    iput-wide v0, p0, Lcom/github/junrar/unpack/ppm/RangeCoder$SubRange;->scale:J

    .line 157
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 165
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 166
    .local v0, "buffer":Ljava/lang/StringBuilder;
    const-string v1, "SubRange["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    const-string v1, "\n  lowCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    iget-wide v1, p0, Lcom/github/junrar/unpack/ppm/RangeCoder$SubRange;->lowCount:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 169
    const-string v1, "\n  highCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    iget-wide v1, p0, Lcom/github/junrar/unpack/ppm/RangeCoder$SubRange;->highCount:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 171
    const-string v1, "\n  scale="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    iget-wide v1, p0, Lcom/github/junrar/unpack/ppm/RangeCoder$SubRange;->scale:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 173
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
