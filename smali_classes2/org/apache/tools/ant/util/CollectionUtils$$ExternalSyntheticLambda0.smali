.class public final synthetic Lorg/apache/tools/ant/util/CollectionUtils$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Ljava/util/Dictionary;

.field public final synthetic f$1:Ljava/util/Dictionary;


# direct methods
.method public synthetic constructor <init>(Ljava/util/Dictionary;Ljava/util/Dictionary;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/tools/ant/util/CollectionUtils$$ExternalSyntheticLambda0;->f$0:Ljava/util/Dictionary;

    iput-object p2, p0, Lorg/apache/tools/ant/util/CollectionUtils$$ExternalSyntheticLambda0;->f$1:Ljava/util/Dictionary;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 2

    iget-object v0, p0, Lorg/apache/tools/ant/util/CollectionUtils$$ExternalSyntheticLambda0;->f$0:Ljava/util/Dictionary;

    iget-object v1, p0, Lorg/apache/tools/ant/util/CollectionUtils$$ExternalSyntheticLambda0;->f$1:Ljava/util/Dictionary;

    invoke-static {v0, v1, p1}, Lorg/apache/tools/ant/util/CollectionUtils;->lambda$equals$0(Ljava/util/Dictionary;Ljava/util/Dictionary;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
