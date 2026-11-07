.class public final synthetic Lorg/apache/tools/ant/types/resources/BaseResourceCollectionContainer$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Lorg/apache/tools/ant/types/Resource;

    invoke-static {p1}, Lorg/apache/tools/ant/types/resources/BaseResourceCollectionContainer;->lambda$isFilesystemOnly$0(Lorg/apache/tools/ant/types/Resource;)Z

    move-result p1

    return p1
.end method
