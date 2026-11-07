.class Lorg/apache/tools/ant/types/resources/Resources$MyIterator;
.super Ljava/lang/Object;
.source "Resources.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/tools/ant/types/resources/Resources;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Lorg/apache/tools/ant/types/Resource;",
        ">;"
    }
.end annotation


# instance fields
.field private rci:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "Lorg/apache/tools/ant/types/ResourceCollection;",
            ">;"
        }
    .end annotation
.end field

.field private ri:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "Lorg/apache/tools/ant/types/Resource;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lorg/apache/tools/ant/types/resources/Resources;


# direct methods
.method private constructor <init>(Lorg/apache/tools/ant/types/resources/Resources;)V
    .locals 0

    .line 87
    iput-object p1, p0, Lorg/apache/tools/ant/types/resources/Resources$MyIterator;->this$0:Lorg/apache/tools/ant/types/resources/Resources;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    invoke-static {p1}, Lorg/apache/tools/ant/types/resources/Resources;->access$100(Lorg/apache/tools/ant/types/resources/Resources;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/tools/ant/types/resources/Resources$MyIterator;->rci:Ljava/util/Iterator;

    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/tools/ant/types/resources/Resources;Lorg/apache/tools/ant/types/resources/Resources$1;)V
    .locals 0

    .line 87
    invoke-direct {p0, p1}, Lorg/apache/tools/ant/types/resources/Resources$MyIterator;-><init>(Lorg/apache/tools/ant/types/resources/Resources;)V

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 2

    .line 93
    iget-object v0, p0, Lorg/apache/tools/ant/types/resources/Resources$MyIterator;->ri:Ljava/util/Iterator;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    .line 94
    iget-object v1, p0, Lorg/apache/tools/ant/types/resources/Resources$MyIterator;->rci:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 95
    iget-object v0, p0, Lorg/apache/tools/ant/types/resources/Resources$MyIterator;->rci:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/types/ResourceCollection;

    invoke-interface {v0}, Lorg/apache/tools/ant/types/ResourceCollection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tools/ant/types/resources/Resources$MyIterator;->ri:Ljava/util/Iterator;

    .line 96
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    goto :goto_0

    :cond_1
    return v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 87
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/Resources$MyIterator;->next()Lorg/apache/tools/ant/types/Resource;

    move-result-object v0

    return-object v0
.end method

.method public next()Lorg/apache/tools/ant/types/Resource;
    .locals 1

    .line 102
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/Resources$MyIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 105
    iget-object v0, p0, Lorg/apache/tools/ant/types/resources/Resources$MyIterator;->ri:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/types/Resource;

    return-object v0

    .line 103
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public remove()V
    .locals 1

    .line 109
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
