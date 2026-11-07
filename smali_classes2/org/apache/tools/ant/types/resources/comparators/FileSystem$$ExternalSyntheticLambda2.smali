.class public final synthetic Lorg/apache/tools/ant/types/resources/comparators/FileSystem$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic f$0:Lorg/apache/tools/ant/types/Resource;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/tools/ant/types/Resource;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/tools/ant/types/resources/comparators/FileSystem$$ExternalSyntheticLambda2;->f$0:Lorg/apache/tools/ant/types/Resource;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/apache/tools/ant/types/resources/comparators/FileSystem$$ExternalSyntheticLambda2;->f$0:Lorg/apache/tools/ant/types/Resource;

    invoke-static {v0}, Lorg/apache/tools/ant/types/resources/comparators/FileSystem;->lambda$file$0(Lorg/apache/tools/ant/types/Resource;)Ljava/lang/ClassCastException;

    move-result-object v0

    return-object v0
.end method
