.class public final synthetic Lorg/apache/tools/ant/types/resources/ResourceList$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Lorg/apache/tools/ant/types/resources/ResourceList;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/tools/ant/types/resources/ResourceList;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/tools/ant/types/resources/ResourceList$$ExternalSyntheticLambda3;->f$0:Lorg/apache/tools/ant/types/resources/ResourceList;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/apache/tools/ant/types/resources/ResourceList$$ExternalSyntheticLambda3;->f$0:Lorg/apache/tools/ant/types/resources/ResourceList;

    check-cast p1, Lorg/apache/tools/ant/types/Resource;

    invoke-static {v0, p1}, Lorg/apache/tools/ant/types/resources/ResourceList;->$r8$lambda$Xr0kFv5mAU_npKC-a8Y9Iw00qMc(Lorg/apache/tools/ant/types/resources/ResourceList;Lorg/apache/tools/ant/types/Resource;)Lorg/apache/tools/ant/types/ResourceCollection;

    move-result-object p1

    return-object p1
.end method
