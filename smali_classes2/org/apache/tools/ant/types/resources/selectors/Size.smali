.class public Lorg/apache/tools/ant/types/resources/selectors/Size;
.super Ljava/lang/Object;
.source "Size.java"

# interfaces
.implements Lorg/apache/tools/ant/types/resources/selectors/ResourceSelector;


# instance fields
.field private size:J

.field private when:Lorg/apache/tools/ant/types/Comparison;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 28
    iput-wide v0, p0, Lorg/apache/tools/ant/types/resources/selectors/Size;->size:J

    .line 29
    sget-object v0, Lorg/apache/tools/ant/types/Comparison;->EQUAL:Lorg/apache/tools/ant/types/Comparison;

    iput-object v0, p0, Lorg/apache/tools/ant/types/resources/selectors/Size;->when:Lorg/apache/tools/ant/types/Comparison;

    return-void
.end method


# virtual methods
.method public getSize()J
    .locals 2

    .line 44
    iget-wide v0, p0, Lorg/apache/tools/ant/types/resources/selectors/Size;->size:J

    return-wide v0
.end method

.method public getWhen()Lorg/apache/tools/ant/types/Comparison;
    .locals 1

    .line 60
    iget-object v0, p0, Lorg/apache/tools/ant/types/resources/selectors/Size;->when:Lorg/apache/tools/ant/types/Comparison;

    return-object v0
.end method

.method public isSelected(Lorg/apache/tools/ant/types/Resource;)Z
    .locals 4

    .line 69
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Resource;->getSize()J

    move-result-wide v0

    iget-wide v2, p0, Lorg/apache/tools/ant/types/resources/selectors/Size;->size:J

    sub-long/2addr v0, v2

    .line 70
    iget-object p1, p0, Lorg/apache/tools/ant/types/resources/selectors/Size;->when:Lorg/apache/tools/ant/types/Comparison;

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    div-long/2addr v0, v2

    long-to-int v0, v0

    :goto_0
    invoke-virtual {p1, v0}, Lorg/apache/tools/ant/types/Comparison;->evaluate(I)Z

    move-result p1

    return p1
.end method

.method public setSize(J)V
    .locals 0

    .line 36
    iput-wide p1, p0, Lorg/apache/tools/ant/types/resources/selectors/Size;->size:J

    return-void
.end method

.method public setWhen(Lorg/apache/tools/ant/types/Comparison;)V
    .locals 0

    .line 52
    iput-object p1, p0, Lorg/apache/tools/ant/types/resources/selectors/Size;->when:Lorg/apache/tools/ant/types/Comparison;

    return-void
.end method
