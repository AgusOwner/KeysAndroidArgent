.class public final synthetic Lorg/apache/tools/ant/types/resources/Resources$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Ljava/util/Stack;

.field public final synthetic f$1:Lorg/apache/tools/ant/Project;


# direct methods
.method public synthetic constructor <init>(Ljava/util/Stack;Lorg/apache/tools/ant/Project;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/tools/ant/types/resources/Resources$$ExternalSyntheticLambda5;->f$0:Ljava/util/Stack;

    iput-object p2, p0, Lorg/apache/tools/ant/types/resources/Resources$$ExternalSyntheticLambda5;->f$1:Lorg/apache/tools/ant/Project;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lorg/apache/tools/ant/types/resources/Resources$$ExternalSyntheticLambda5;->f$0:Ljava/util/Stack;

    iget-object v1, p0, Lorg/apache/tools/ant/types/resources/Resources$$ExternalSyntheticLambda5;->f$1:Lorg/apache/tools/ant/Project;

    check-cast p1, Lorg/apache/tools/ant/types/DataType;

    invoke-static {v0, v1, p1}, Lorg/apache/tools/ant/types/resources/Resources;->lambda$dieOnCircularReference$1(Ljava/util/Stack;Lorg/apache/tools/ant/Project;Lorg/apache/tools/ant/types/DataType;)V

    return-void
.end method
