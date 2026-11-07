.class public Lorg/apache/tools/ant/types/resources/selectors/Not;
.super Ljava/lang/Object;
.source "Not.java"

# interfaces
.implements Lorg/apache/tools/ant/types/resources/selectors/ResourceSelector;


# instance fields
.field private sel:Lorg/apache/tools/ant/types/resources/selectors/ResourceSelector;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lorg/apache/tools/ant/types/resources/selectors/ResourceSelector;)V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/types/resources/selectors/Not;->add(Lorg/apache/tools/ant/types/resources/selectors/ResourceSelector;)V

    return-void
.end method


# virtual methods
.method public add(Lorg/apache/tools/ant/types/resources/selectors/ResourceSelector;)V
    .locals 1

    .line 50
    iget-object v0, p0, Lorg/apache/tools/ant/types/resources/selectors/Not;->sel:Lorg/apache/tools/ant/types/resources/selectors/ResourceSelector;

    if-nez v0, :cond_0

    .line 54
    iput-object p1, p0, Lorg/apache/tools/ant/types/resources/selectors/Not;->sel:Lorg/apache/tools/ant/types/resources/selectors/ResourceSelector;

    return-void

    .line 51
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "The Not ResourceSelector accepts a single nested ResourceSelector"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public isSelected(Lorg/apache/tools/ant/types/Resource;)Z
    .locals 1

    .line 63
    iget-object v0, p0, Lorg/apache/tools/ant/types/resources/selectors/Not;->sel:Lorg/apache/tools/ant/types/resources/selectors/ResourceSelector;

    invoke-interface {v0, p1}, Lorg/apache/tools/ant/types/resources/selectors/ResourceSelector;->isSelected(Lorg/apache/tools/ant/types/Resource;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method
