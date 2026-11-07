.class public final synthetic Lorg/apache/tools/ant/types/resources/MappedResourceCollection$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Lorg/apache/tools/ant/util/FileNameMapper;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/tools/ant/util/FileNameMapper;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/tools/ant/types/resources/MappedResourceCollection$$ExternalSyntheticLambda4;->f$0:Lorg/apache/tools/ant/util/FileNameMapper;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/apache/tools/ant/types/resources/MappedResourceCollection$$ExternalSyntheticLambda4;->f$0:Lorg/apache/tools/ant/util/FileNameMapper;

    check-cast p1, Lorg/apache/tools/ant/types/Resource;

    invoke-static {v0, p1}, Lorg/apache/tools/ant/types/resources/MappedResourceCollection;->lambda$getCollection$2(Lorg/apache/tools/ant/util/FileNameMapper;Lorg/apache/tools/ant/types/Resource;)Lorg/apache/tools/ant/types/resources/MappedResource;

    move-result-object p1

    return-object p1
.end method
