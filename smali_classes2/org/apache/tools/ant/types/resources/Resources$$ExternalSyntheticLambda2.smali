.class public final synthetic Lorg/apache/tools/ant/types/resources/Resources$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic f$0:Lorg/apache/tools/ant/types/resources/Resources;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/tools/ant/types/resources/Resources;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/tools/ant/types/resources/Resources$$ExternalSyntheticLambda2;->f$0:Lorg/apache/tools/ant/types/resources/Resources;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/apache/tools/ant/types/resources/Resources$$ExternalSyntheticLambda2;->f$0:Lorg/apache/tools/ant/types/resources/Resources;

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/resources/Resources;->lambda$iterator$0$org-apache-tools-ant-types-resources-Resources()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method
