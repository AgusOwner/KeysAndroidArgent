.class public Lorg/apache/tools/ant/types/ResourceLocation;
.super Ljava/lang/Object;
.source "ResourceLocation.java"


# instance fields
.field private base:Ljava/net/URL;

.field private location:Ljava/lang/String;

.field private publicId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 43
    iput-object v0, p0, Lorg/apache/tools/ant/types/ResourceLocation;->publicId:Ljava/lang/String;

    .line 46
    iput-object v0, p0, Lorg/apache/tools/ant/types/ResourceLocation;->location:Ljava/lang/String;

    .line 55
    iput-object v0, p0, Lorg/apache/tools/ant/types/ResourceLocation;->base:Ljava/net/URL;

    return-void
.end method


# virtual methods
.method public getBase()Ljava/net/URL;
    .locals 1

    .line 102
    iget-object v0, p0, Lorg/apache/tools/ant/types/ResourceLocation;->base:Ljava/net/URL;

    return-object v0
.end method

.method public getLocation()Ljava/lang/String;
    .locals 1

    .line 95
    iget-object v0, p0, Lorg/apache/tools/ant/types/ResourceLocation;->location:Ljava/lang/String;

    return-object v0
.end method

.method public getPublicId()Ljava/lang/String;
    .locals 1

    .line 88
    iget-object v0, p0, Lorg/apache/tools/ant/types/ResourceLocation;->publicId:Ljava/lang/String;

    return-object v0
.end method

.method public setBase(Ljava/net/URL;)V
    .locals 0

    .line 81
    iput-object p1, p0, Lorg/apache/tools/ant/types/ResourceLocation;->base:Ljava/net/URL;

    return-void
.end method

.method public setLocation(Ljava/lang/String;)V
    .locals 0

    .line 71
    iput-object p1, p0, Lorg/apache/tools/ant/types/ResourceLocation;->location:Ljava/lang/String;

    return-void
.end method

.method public setPublicId(Ljava/lang/String;)V
    .locals 0

    .line 63
    iput-object p1, p0, Lorg/apache/tools/ant/types/ResourceLocation;->publicId:Ljava/lang/String;

    return-void
.end method
