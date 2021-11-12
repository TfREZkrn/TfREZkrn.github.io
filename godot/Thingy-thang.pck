GDPC                                                                            !   <   res://.import/icon.png-487276ed1e3a0c39cad0279d744ee560.stex 2      U      -��`�0��x�5�[@   res://.import/pumpkin.glb-48b5d69e44e30ad0ab3ced513bb7ce59.scn  �S      �      "ґ9-睭D3��P�LD   res://.import/pumpkinTall.glb-bde30c03a5a9f848d40365db8095159a.scn  ��      �      xa��"��X6R,ED   res://.import/pumpkinTall.obj-0093539b36bb193bafd8b058c6cd41cc.mesh �     �      �Cܵ_F��0��=�j�H   res://.import/pumpkinTallCarved.glb-3a19895f5ad8fe662db9a0916529af23.scn�     �C      :+VZ�v�.P�*˄8�L   res://.import/pumpkinTallCarved.obj-d47aefad8fdb94219b6bf0fa624107b0.mesh   e     �!      P��U1���u�U*u�   res://Main.tscn @	      �      H�� 얝t	���   res://Player.gd.remap   ��     !       ��0�F �qq��dX��   res://Player.gdc0      }	      �~m{a�eСa�B�   res://Player.tscn   �      	      �Y!���#؈���@   res://SwitchPumpkin.gd.remap��     (       ��Km3p�V/�ú?   res://SwitchPumpkin.gdc �#            �;��2�8T�&Fo;,\   res://SwitchPumpkin.tscn�&      g      q��%ejw���r��b7    res://buildings/Door.gd.remap   �     )       ���[a���7   res://buildings/Door.gdcP*      �      ��-)���9D��9a   res://buildings/Door.tscn   �-      =      R���4cg��G/���   res://buildings/wall.tscn    0      N      C=�/�<�-�-�A�g   res://default_env.tres  p1      �       um�`�N��<*ỳ�8   res://icon.png  @�     �      G1?��z�c��vN��   res://icon.png.import   �?      �      �����%��(#AB�   res://light.material B      @      w��.	�ׁ�~�[��5   res://metal.material@H      �      &�ks���:�����PJ�   res://project.binary0�     �      _���3��r��qh	<�   res://props/Thing.tscn   K            ��j�)�ު[���=�   res://props/metal.material  @M      F      ư���bax�no`�=M    res://props/pumpkin.glb.import  po      8|      ��N��~�R��κ�N   res://props/pumpkin.material��      J      ��� }V��U�x%�;6   res://pumpkin.material   �      �      +��U����ý��   res://pumpkinTall.glb.import�     >|      v2ԉ�i`&b�(��   res://pumpkinTall.obj.importТ           
�-�m�U�o���|Z$   res://pumpkinTallCarved.glb.import  ��     P|      �������yI7!�P�$   res://pumpkinTallCarved.obj.import   �     #      ��> ����SE��   res://spooky.tres   0�     u       h�k�_�.�Ѕ�M�r            [gd_scene load_steps=13 format=2]

[ext_resource path="res://props/Thing.tscn" type="PackedScene" id=1]
[ext_resource path="res://Player.tscn" type="PackedScene" id=2]
[ext_resource path="res://SwitchPumpkin.tscn" type="PackedScene" id=3]
[ext_resource path="res://pumpkinTallCarved.obj" type="ArrayMesh" id=4]
[ext_resource path="res://pumpkinTall.obj" type="ArrayMesh" id=5]
[ext_resource path="res://buildings/wall.tscn" type="PackedScene" id=6]
[ext_resource path="res://spooky.tres" type="Environment" id=7]
[ext_resource path="res://buildings/Door.tscn" type="PackedScene" id=8]

[sub_resource type="BoxShape" id=1]

[sub_resource type="CubeMesh" id=2]
size = Vector3( 60, 2, 60 )

[sub_resource type="SpatialMaterial" id=3]
flags_unshaded = true
albedo_color = Color( 1, 0.819608, 0, 1 )

[sub_resource type="SphereMesh" id=4]
material = SubResource( 3 )

[node name="Main" type="Node"]

[node name="Thing" parent="." instance=ExtResource( 1 )]

[node name="Player" parent="." instance=ExtResource( 2 )]
transform = Transform( 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 1.75, -3 )

[node name="StaticBody" type="StaticBody" parent="."]

[node name="CollisionShape" type="CollisionShape" parent="StaticBody"]
transform = Transform( 30, 0, 0, 0, 1, 0, 0, 0, 30, 0, -1, 0 )
shape = SubResource( 1 )

[node name="MeshInstance" type="MeshInstance" parent="StaticBody"]
transform = Transform( 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, -1, 0 )
mesh = SubResource( 2 )
material/0 = null

[node name="SwitchPumpkin" parent="." instance=ExtResource( 3 )]
transform = Transform( 1, 0, 0, 0, 1, 0, 0, 0, 1, -4.84501, 1.30286, 0 )
off_mesh = ExtResource( 5 )
on_mesh = ExtResource( 4 )
target = NodePath("../Walls/Door")

[node name="Walls" type="Spatial" parent="."]

[node name="Wall" parent="Walls" instance=ExtResource( 6 )]
transform = Transform( 1, 0, 0, 0, 3, 0, 0, 0, 28, -29, 3, 0 )

[node name="Wall2" parent="Walls" instance=ExtResource( 6 )]
transform = Transform( 30, 0, 0, 0, 3, 0, 0, 0, 1, 0, 3, -29 )

[node name="Wall3" parent="Walls" instance=ExtResource( 6 )]
transform = Transform( 30, 0, 0, 0, 3, 0, 0, 0, 1, 0, 3, 29 )

[node name="Wall4" parent="Walls" instance=ExtResource( 6 )]
transform = Transform( 1, 0, 0, 0, 3, 0, 0, 0, 28, 29, 3, 0 )

[node name="Wall5" parent="Walls" instance=ExtResource( 6 )]
transform = Transform( 1, 0, 0, 0, 2, 0, 0, 0, 10, -12, 2, 18 )

[node name="Wall6" parent="Walls" instance=ExtResource( 6 )]
transform = Transform( 1, 0, 0, 0, 2, 0, 0, 0, 16, -12, 2, -12 )

[node name="Wall7" parent="Walls" instance=ExtResource( 6 )]
transform = Transform( 1, 0, 0, 0, 1, 0, 0, 0, 28, -12, 5, 0 )

[node name="Door" parent="Walls" instance=ExtResource( 8 )]
transform = Transform( -8.74228e-08, 0, -1, 0, 1, 0, 2, 0, -4.37114e-08, -12, 0, 4 )
targetAngle = -90.0

[node name="WorldEnvironment" type="WorldEnvironment" parent="."]
environment = ExtResource( 7 )

[node name="CPUParticles" type="CPUParticles" parent="."]
transform = Transform( 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 7.1911, 0 )
emitting = false
amount = 5
lifetime = 5.0
one_shot = true
explosiveness = 1.0
mesh = SubResource( 4 )
gravity = Vector3( 0, -5.5, 0 )
initial_velocity = 5.0
initial_velocity_random = 0.5
angular_velocity_random = 1.0
damping = 2.0
damping_random = 1.0
scale_amount = 0.1
scale_amount_random = 0.1
              GDSC   !      E   �     ������������϶��   ����Ҷ��   ����   �������϶���   ��������   ���������������Ŷ���   ����׶��   ��������ض��   ��۶   ����¶��   ����������������Ҷ��   ζ��   �������ض���   ϶��   ̶��   ���������Ҷ�   �������������Ӷ�   �涶   ���Ŷ���   ��������Ŷ��   ��������۶��   �����ض�   �������Ŷ���   ���������������������Ҷ�   �ն�   ������¶   �����������Ѷ���   ���ڶ���   �����������Ķ���   ���Ӷ���   �����Ӷ�   ��������¶��   ������Ӷ   
      
   move right     	   move left         move forward   	   move back         look up          	   look down      	   look left      
   look right                     use       SwitchPumpkin         flash                      	                                 	      
               #      *      1      2      ;      J      X      a      o      ~      �      �      �      �      �      �      �      �      �      �       �   !   �   "   �   #     $     %     &     '     (     )   #  *   -  +   .  ,   6  -   7  .   B  /   C  0   I  1   [  2   k  3   l  4   w  5   �  6   �  7   �  8   �  9   �  :   �  ;   �  <   �  =   �  >   �  ?   �  @   �  A   �  B   �  C   �  D   �  E   3YY8;�  Y8;�  YY;�  �  T�  YYYYYY0�  P�  QV�  ;�  �  T�  �  ;�  �  T�  �  �  &�	  T�
  P�  QV�  �  T�  �,  P�  P�  T�  QQ�  �  T�  �,  PP�  T�  QQ�  &�	  T�
  P�  QV�  �  T�  �,  P�  P�  T�  QQ�  �  T�  �,  PP�  T�  QQ�  &�	  T�
  P�  QV�  �  T�  �,  P�  P�  T�  QQ�  �  T�  �,  PP�  T�  QQ�  &�	  T�
  P�  QV�  �  T�  �,  P�  P�  T�  QQ�  �  T�  �,  PP�  T�  QQ�  �  &�	  T�
  P�  QV�  �  T�  �  �  &�	  T�
  P�  QV�  �  T�  �  �  &�	  T�
  P�  QV�  �  T�  �  �  &�	  T�
  P�	  QV�  �  T�  �  �  �  &�  �  T�  V�  �  �  T�  PQ�  �  �  T�  �  T�  �  �  �  T�  �  T�  �  �  �  �  T�  �  �  �  �  �  �  P�  R�  T�  Q�  �  ;�  W�  �  �  T�  �  P�+  P�  T�  QR�
  R�
  Q�  �  �  P�
  R�+  P�  T�  QR�
  Q�  �  &�  T�  T�  
V�  �  T�  �  P�
  R�  R�
  QYY0�  P�  QV�  &�	  T�  P�  QV�  �  ;�  W�  �  �  &�  T�  PQV�  ;�  �  T�  PQ�  &�  T�  �  V�  �  T�  PQ�  �  &�	  T�  P�  QV�  W�  �  T�   W�  �  T�   YYYY`   [gd_scene load_steps=3 format=2]

[ext_resource path="res://Player.gd" type="Script" id=1]

[sub_resource type="CapsuleShape" id=1]
height = 1.5

[node name="Player" type="KinematicBody"]
script = ExtResource( 1 )

[node name="CollisionShape" type="CollisionShape" parent="."]
transform = Transform( 1, 0, 0, 0, -4.37114e-08, -1, 0, 1, -4.37114e-08, 0, 0, 0 )
shape = SubResource( 1 )

[node name="CameraPos" type="Position3D" parent="."]
transform = Transform( 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0.8, 0 )

[node name="Camera" type="Camera" parent="CameraPos"]
transform = Transform( -1, 0, -8.74228e-08, 0, 1, 0, 8.74228e-08, 0, -1, 0, 0, 0 )
current = true
fov = 90.0

[node name="RayCast" type="RayCast" parent="CameraPos"]
enabled = true
cast_to = Vector3( 0, 0.8, 100 )

[node name="SpotLight" type="SpotLight" parent="CameraPos"]
transform = Transform( -1, 0, -8.74228e-08, 0, 1, 0, 8.74228e-08, 0, -1, -0.5, -0.5, 0 )
light_color = Color( 0.698039, 0.721569, 0.835294, 1 )
shadow_enabled = true
spot_range = 20.0
spot_angle = 20.0
       GDSC             |      ������������϶��   ���޶���   �������޶���   ������޶   �����¶�   �ض�   �����Ӷ�   ��ڶ   �����������Ӷ���   ���޶���   ��������¶��   ������Ӷ   ������¶   �������Ӷ���   �������Ӷ���   ���������Ӷ�                                                                     	      
         "      #      )      /      4      8      >      E      H      N      U      ]      c      g      m      p      v      w      x      y      z       3YYYYYY8P�  Q;�  Y8P�  Q;�  Y8P�  Q;�  YY;�  YY0�  PQV�  ;�  W�  �  �  �  �  &�  V�  �  T�	  �  �  W�
  T�  �  �  (V�  �  T�	  �  �  W�
  T�  �  ;�  �  P�  Q�  &�  �  V�  &�  V�  �  T�  PQ�  (V�  �  T�  PQYYYYY`            [gd_scene load_steps=4 format=2]

[ext_resource path="res://SwitchPumpkin.gd" type="Script" id=1]
[ext_resource path="res://pumpkinTall.obj" type="ArrayMesh" id=2]

[sub_resource type="BoxShape" id=1]

[node name="SwitchPumpkin" type="KinematicBody"]
script = ExtResource( 1 )

[node name="CollisionShape" type="CollisionShape" parent="."]
transform = Transform( 1, 0, 0, 0, 1, 0, 0, 0, 1, 0.0648085, 1.04027, 0 )
shape = SubResource( 1 )

[node name="MeshInstance" type="MeshInstance" parent="."]
transform = Transform( 8, 0, 0, 0, 8, 0, 0, 0, 8, 0, 0, 0 )
mesh = ExtResource( 2 )
material/0 = null
material/1 = null

[node name="OmniLight" type="OmniLight" parent="."]
transform = Transform( 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 1.74755, 1.43575 )
visible = false
light_color = Color( 0.921569, 0.686275, 0.34902, 1 )
light_energy = 2.5
shadow_enabled = true
omni_range = 3.0
         GDSC            �      �������؅�   ���Ӷ���   ����������Ӷ   �����������Ӷ���   ���Ӷ���   ���ƶ���   �������Ӷ���   ���������������Ŷ���   ϶��   ���ٶ���   �������Ӷ���   ���������Ӷ�   ���������������Ŷ���   ����׶��   �������϶���          Z      <            h    333333�?                                           "      )   	   0   
   1      7      ;      A      E      F      L      P      U      Y      Z      a      e      i      t      }      �      �      �      �      �      3YY;�  Y8P�  Q;�  �  Y;�  �  Y8P�  Q;�  �  Y;�  Y;�  �  T�  Y;�	  �  T�  YY0�
  PQV�  �  �  �  �  �  �  �  �  �  YY0�  PQV�  �  �	  �  �  �  �  �  �  YY0�  P�  QV�  &�  V�  �  �  �  &P�  P�  Q�  QV�  �  �  P�  Q�  �  &P�  P�  �  Q	�  QV�  �  �  �  �  �  P�+  P�  QQY`    [gd_scene load_steps=4 format=2]

[ext_resource path="res://buildings/Door.gd" type="Script" id=1]

[sub_resource type="BoxShape" id=1]

[sub_resource type="CubeMesh" id=2]

[node name="Door" type="Position3D"]
script = ExtResource( 1 )

[node name="KinematicBody" type="KinematicBody" parent="."]
transform = Transform( 1, 0, 0, 0, 2, 0, 0, 0, 0.3, 1, 2, 0 )

[node name="CollisionShape" type="CollisionShape" parent="KinematicBody"]
shape = SubResource( 1 )

[node name="MeshInstance" type="MeshInstance" parent="KinematicBody"]
mesh = SubResource( 2 )
material/0 = null
   [gd_scene load_steps=3 format=2]

[sub_resource type="CubeMesh" id=1]

[sub_resource type="BoxShape" id=2]

[node name="Wall" type="StaticBody"]

[node name="MeshInstance" type="MeshInstance" parent="."]
mesh = SubResource( 1 )
material/0 = null

[node name="CollisionShape" type="CollisionShape" parent="."]
shape = SubResource( 2 )
  [gd_resource type="Environment" load_steps=2 format=2]

[sub_resource type="ProceduralSky" id=1]

[resource]
background_mode = 2
background_sky = SubResource( 1 )
             GDST@   @           9  PNG �PNG

   IHDR   @   @   �iq�   sRGB ���  �IDATx�ݜytTU��?��WK*�=���%�  F����0N��݂:���Q�v��{�[�����E�ӋH���:���B�� YHB*d_*�jyo�(*M�JR!h��S�T��w�߻���ro���� N�\���D�*]��c����z��D�R�[�
5Jg��9E�|JxF׵'�a���Q���BH�~���!����w�A�b
C1�dB�.-�#��ihn�����u��B��1YSB<%�������dA�����C�$+(�����]�BR���Qsu][`
�DV����у�1�G���j�G͕IY! L1�]��� +FS�IY!IP ��|�}��*A��H��R�tQq����D`TW���p\3���M���,�fQ����d��h�m7r�U��f������.��ik�>O�;��xm��'j�u�(o}�����Q�S�-��cBc��d��rI�Ϛ�$I|]�ơ�vJkZ�9>��f����@EuC�~�2�ym�ش��U�\�KAZ4��b�4������;�X婐����@Hg@���o��W�b�x�)����3]j_��V;K����7�u����;o�������;=|��Ŗ}5��0q�$�!?��9�|�5tv�C�sHPTX@t����w�nw��۝�8�=s�p��I}�DZ-̝�ǆ�'�;=����R�PR�ۥu���u��ǻC�sH`��>�p�P ���O3R�������۝�SZ7 �p��o�P!�
��� �l��ހmT�Ƴێ�gA��gm�j����iG���B� ܦ(��cX�}4ۻB��ao��"����� ����G�7���H���æ;,NW?��[��`�r~��w�kl�d4�������YT7�P��5lF�BEc��=<�����?�:]�������G�Μ�{������n�v��%���7�eoݪ��
�QX¬)�JKb����W�[�G ��P$��k�Y:;�����{���a��&�eפ�����O�5,;����yx�b>=fc�* �z��{�fr��7��p���Ôִ�P����t^�]͑�~zs.�3����4��<IG�w�e��e��ih�/ˆ�9�H��f�?����O��.O��;!��]���x�-$E�a1ɜ�u�+7Ȃ�w�md��5���C.��\��X��1?�Nغ/�� ��~��<:k?8��X���!���[���꩓��g��:��E����>��꩓�u��A���	iI4���^v:�^l/;MC��	iI��TM-$�X�;iLH���;iI1�Zm7����P~��G�&g�|BfqV#�M������%��TM��mB�/�)����f����~3m`��������m�Ȉ�Ƽq!cr�pc�8fd���Mۨkl�}P�Л�汻��3p�̤H�>+���1D��i�aۡz�
������Z�Lz|8��.ִQ��v@�1%&���͏�������m���KH�� �p8H�4�9����/*)�aa��g�r�w��F36���(���7�fw����P��&�c����{﹏E7-f�M�).���9��$F�f r �9'1��s2).��G��{���?,�
�G��p�µ�QU�UO�����>��/�g���,�M��5�ʖ�e˃�d����/�M`�=�y=�����f�ӫQU�k'��E�F�+ =΂���
l�&���%%�������F#KY����O7>��;w���l6***B�g)�#W�/�k2�������TJ�'����=!Q@mKYYYdg��$Ib��E�j6�U�,Z�鼌Uvv6YYYԶ��}( ���ߠ#x~�s,X0�����rY��yz�	|r�6l����cN��5ϑ��KBB���5ϡ#xq�7�`=4A�o�xds)�~wO�z�^��m���n�Ds�������e|�0�u��k�ٱ:��RN��w�/!�^�<�ͣ�K1d�F����:�������ˣ����%U�Ą������l{�y����)<�G�y�`}�t��y!��O@� A� Y��sv:K�J��ՎۣQ�܃��T6y�ǯ�Zi
��<�F��1>�	c#�Ǉ��i�L��D�� �u�awe1�e&')�_�Ǝ^V�i߀4�$G�:��r��>h�hݝ������t;)�� &�@zl�Ұր��V6�T�+����0q��L���[t���N&e��Z��ˆ/����(�i啝'i�R�����?:
P].L��S��E�݅�Á�.a6�WjY$F�9P�«����V^7���1Ȓ� �b6�(����0"�k�;�@MC���N�]7 �)Q|s����QfdI���5 ��.f��#1���G���z���>)�N�>�L0T�ۘ5}��Y[�W뿼mj���n���S?�v��ْ|.FE"=�ߑ��q����������p����3�¬8�T�GZ���4ݪ�0�L�Y��jRH��.X�&�v����#�t��7y_#�[�o��V�O����^�����paV�&J�V+V��QY����f+m��(�?/������{�X��:�!:5�G�x���I����HG�%�/�LZ\8/����yLf�Æ>�X�Єǣq���$E������E�Ǣ�����gێ��s�rxO��x孏Q]n���LH����98�i�0==���O$5��o^����>6�a� �*�)?^Ca��yv&���%�5>�n�bŜL:��y�w���/��o�褨A���y,[|=1�VZ�U>,?͑���w��u5d�#�K�b�D�&�:�����l~�S\���[CrTV�$����y��;#�������6�y��3ݸ5��.�V��K���{�,-ւ� k1aB���x���	LL� ����ңl۱������!U��0L�ϴ��O\t$Yi�D�Dm��]|�m���M�3���bT�
�N_����~uiIc��M�DZI���Wgkn����C��!xSv�Pt�F��kڨ��������OKh��L����Z&ip��
ޅ���U�C�[�6��p���;uW8<n'n��nͽQ�
�gԞ�+Z	���{���G�Ĭ� �t�]�p;躆 ��.�ۣ�������^��n�ut�L �W��+ ���hO��^�w�\i� ��:9>3�=��So�2v���U1z��.�^�ߋěN���,���� �f��V�    IEND�B`�           [remap]

importer="texture"
type="StreamTexture"
path="res://.import/icon.png-487276ed1e3a0c39cad0279d744ee560.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://icon.png"
dest_files=[ "res://.import/icon.png-487276ed1e3a0c39cad0279d744ee560.stex" ]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/bptc_ldr=0
compress/normal_map=0
flags/repeat=0
flags/filter=true
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
process/invert_color=false
stream=false
size_limit=0
detect_3d=true
svg/scale=1.0
RSRC                    SpatialMaterial                                                                 <      resource_local_to_scene    resource_name    render_priority 
   next_pass    flags_transparent    flags_use_shadow_to_opacity    flags_unshaded    flags_vertex_lighting    flags_no_depth_test    flags_use_point_size    flags_world_triplanar    flags_fixed_size    flags_albedo_tex_force_srgb    flags_do_not_receive_shadows    flags_disable_ambient_light    flags_ensure_correct_normals    vertex_color_use_as_albedo    vertex_color_is_srgb    params_diffuse_mode    params_specular_mode    params_blend_mode    params_cull_mode    params_depth_draw_mode    params_line_width    params_point_size    params_billboard_mode    params_billboard_keep_scale    params_grow    params_use_alpha_scissor    albedo_color    albedo_texture 	   metallic    metallic_specular    metallic_texture    metallic_texture_channel 
   roughness    roughness_texture    roughness_texture_channel    emission_enabled    normal_enabled    rim_enabled    clearcoat_enabled    anisotropy_enabled    ao_enabled    depth_enabled    subsurf_scatter_enabled    transmission_enabled    refraction_enabled    detail_enabled 
   uv1_scale    uv1_offset    uv1_triplanar    uv1_triplanar_sharpness 
   uv2_scale    uv2_offset    uv2_triplanar    uv2_triplanar_sharpness    proximity_fade_enable    distance_fade_mode    script           res://light.material �         SpatialMaterial             light                �z?��U? ��>  �?        �?RSRCRSCC      <  �  (�/�`<� &cf5`M��F0I�$I�$Y�ڶֈ$͖��IB��[�8[ ���@G0E��^��#SS T W M�#��5H�T��Fȏ��p�1�m�̭�?ř��� ������-*���1G���6Z�t!L�(�������r��ú�k����V�����U�:�&��0�f��s�r��#�	�2���fY4�F�PY�P8�e�{�V�m�֪A$�f�-�Q�R��n��"�ɜR8��yt2vMB)׺F����>��W�31�����D�Qp\�5��=U�J�i��,��VMX�I��R(�֓�1*u�%b��020 !��$���(I$F@�@@����b�� ��&�o ��T�nA�NNt���x��h�eQ\"O^��t��.v/���&�h����A��=\�ɀ��Q�2�̌�HҤ0�P*��CA�"1��������A{�;�nn���+[`yL����t��w���vÆ0��������jTNB��X���!�Q�&<�mo�����h�ls{>9gO���K�s�'� ��,��aD,�<���w�T�/�4l33��ݎI��(C_�bBllLN���s zD�ߓH�@ǟ��(�m�Ew����i�	�Į9a�q�+O�ڱ�8/�nR$	l=%=�x爺b=��-@ q�;ζJT)TbI̫����$%�RSCC    [gd_scene load_steps=3 format=2]

[ext_resource path="res://props/pumpkin.glb" type="PackedScene" id=1]

[sub_resource type="BoxShape" id=1]

[node name="Thing" type="KinematicBody"]

[node name="CollisionShape" type="CollisionShape" parent="."]
transform = Transform( 0.6, 0, 0, 0, 0.5, 0, 0, 0, 0.6, 0, 0.5, 0 )
shape = SubResource( 1 )

[node name="Spatial" type="Spatial" parent="."]

[node name="pumpkin" parent="Spatial" instance=ExtResource( 1 )]
transform = Transform( 4, 0, 0, 0, 4, 0, 0, 0, 4, 0.172017, 0, 0.0645245 )
               RSRC                    SpatialMaterial                                                                 <      resource_local_to_scene    resource_name    render_priority 
   next_pass    flags_transparent    flags_use_shadow_to_opacity    flags_unshaded    flags_vertex_lighting    flags_no_depth_test    flags_use_point_size    flags_world_triplanar    flags_fixed_size    flags_albedo_tex_force_srgb    flags_do_not_receive_shadows    flags_disable_ambient_light    flags_ensure_correct_normals    vertex_color_use_as_albedo    vertex_color_is_srgb    params_diffuse_mode    params_specular_mode    params_blend_mode    params_cull_mode    params_depth_draw_mode    params_line_width    params_point_size    params_billboard_mode    params_billboard_keep_scale    params_grow    params_use_alpha_scissor    albedo_color    albedo_texture 	   metallic    metallic_specular    metallic_texture    metallic_texture_channel 
   roughness    roughness_texture    roughness_texture_channel    emission_enabled    normal_enabled    rim_enabled    clearcoat_enabled    anisotropy_enabled    ao_enabled    depth_enabled    subsurf_scatter_enabled    transmission_enabled    refraction_enabled    detail_enabled 
   uv1_scale    uv1_offset    uv1_triplanar    uv1_triplanar_sharpness 
   uv2_scale    uv2_offset    uv2_triplanar    uv2_triplanar_sharpness    proximity_fade_enable    distance_fade_mode    script           res://props/metal.material �         SpatialMaterial             metal                9t ?��c?�TT?  �?        �?RSRC          RSRC                    PackedScene                                                                 	      resource_local_to_scene    resource_name    lightmap_size_hint    blend_shape_mode    custom_aabb    surfaces/0    surfaces/1    script 	   _bundled    	   Material    res://props/metal.material 	   Material    res://props/pumpkin.material    
   local://1 �      
   local://2 �      
   ArrayMesh             pumpkin       
         array_data    �	  70����^>e�N<�9    �76�70����^>e�N��9    �6�'ۺF=�>�;?<�9    Z7�'ۺF=�>�;?��9    Z��u�
�#>�P�     �� <��
�#>�6T�     ��(���
�#>�6T=     ��B/ݼ
�#>/�<     @� @�<
�#>�6T=     �<B/�<
�#>/�<     @< @/�<
�#>/ݼ     @<�/ݼ
�#>/ݼ     @���<
�#>�6T�     �<(�u=
�#>�P�     �@ </ݼ
�#>/ݼ � �  @<��/�<
�#>/ݼ � �  @���70����^>e�N� � �  ;-�m�*;��^>e�N� � �  ��-�70����^>e�N� � �  ;��m�*;��^>e�N� � �  ����'ۺF=�>�;?� � �  6,��z��<F=�>�;?� � �  Ӻ��m�*;��^>e�N< ~   �.��70����^>e�N< ~   ���z��<F=�>�;?< ~   �:��'ۺF=�>�;?< ~   6���/ݼ
�#>/�<�	    ~@<3�/ݼ
�#>/ݼ�	    ~@�3�70����^>e�N<�	    �7v�70����^>e�N��	    �v�m�*;��^>e�N<s�    ����z��<F=�>�;?<s�    �Z�J�m�*;��^>e�N�s�    ��7��z��<F=�>�;?�s�    �Z7J�'ۺF=�>�;?<     6��='ۺF=�>�;?�     6�R8z��<F=�>�;?<     �:�=z��<F=�>�;?�     �:R8/�<
�#>/�< {   @<��/ݼ
�#>/�< {   @���m�*;��^>e�N< {   �.-�70����^>e�N< { ~  �-�/�<
�#>/�<t1    �@�a�m�*;��^>e�N<t1    ����/�<
�#>/ݼt1    �@<a�m�*;��^>e�N�t1    ��7�ƚ�>    �P�e��    ������6>��u=�P�e��    ����=    ��e��    �A���ȶ=��u=�K�e��    C��*:�
�#>�P��%�    �A(ô�6���u=�P��%�    CS8*:��
�#>�E���%�    ��(ôȶ���u=�K��%�    �S8�ȶ=��u=�K> %y    CS8�ȶ���u=�K> %y    �S8*:�=
�#>�E�= %y    �A(�*:��
�#>�E�= %y    ��(Ú���    �� Ћ    �A�����=    �� Ћ    �����ȶ���u=�K� Ћ    C�´ȶ=��u=�K� Ћ    ���*:�
�#>�P�      �� <*:��
�#>�E��      ����*:��
�#>�E�=      ���E*:�=
�#>�E�=      �A�E*:�=
�#>�E��      �A��*:>
�#>�P�      �E <��6���u=�P����    C���    �P����    �A���ȶ���u=�K����    �����    �����    �����ȶ=��u=�K>i%<    �S8*:�=
�#>�E�=i%<    ��(ô�6>��u=�P�i%<    CS8*:>
�#>�P�i%<    �A(ôȶ���u=�K>�%<    CS8��6���u=�P��%<    �S8*:��
�#>�E�=�%<    �A(�*:�
�#>�P��%<    ��(ôȶ���u=�K� %�    CS8�ȶ=��u=�K� %�    �S8*:��
�#>�E�� %�    �A(�*:�=
�#>�E�� %�    ��(Ú��    �P� �     �E <����    �> �     �AF����    �� �     �AĚ��=    �� �     ��Ě��=    �> �     ��F��>    �P� �     �� <��6>��u=�P�i%�    �S8*:>
�#>�P�i%�    ��(ôȶ=��u=�K�i%�    CS8*:�=
�#>�E��i%�    �A(ôȶ=��u=�K>e�:    ��´�6>��u=�P�e�:    C���=    �>e�:    ������>    �P�e�:    �A���ȶ���u=�K>��:    C����    �>��:    �A����6���u=�P���:    ����    �P���:    �������=    �> �u    �A������    �> �u    �����ȶ=��u=�K> �u    C�´ȶ���u=�K> �u    ���      vertex_count    j         array_index_data    �                    	  	 
         
    
                                 !   $ " # # % $ ( & ' ' ) ( , * + + - ,       index_count    T      
   primitive             format    }       aabb    ��6�    �K��ȶ>F=�>�K�>      skeleton_aabb              blend_shape_data           	   material                 
         array_data    �	  70����^>e�N<�9     �76�70����^>e�N��9     �6�'ۺF=�>�;?<�9     Z7�'ۺF=�>�;?��9     Z��u�
�#>�P�     �� <��
�#>�6T�     ��(���
�#>�6T=     ��B/ݼ
�#>/�<      @� @�<
�#>�6T=     �<B/�<
�#>/�<      @< @/�<
�#>/ݼ      @<�/ݼ
�#>/ݼ      @���<
�#>�6T�     �<(�u=
�#>�P�     �@ </ݼ
�#>/ݼ �    @<��/�<
�#>/ݼ �    @���70����^>e�N� �    ;-�m�*;��^>e�N� �    ��-�70����^>e�N� �    ;��m�*;��^>e�N� �    ����'ۺF=�>�;?� �    6,��z��<F=�>�;?� �    Ӻ��m�*;��^>e�N< ~    �.��70����^>e�N< ~    ���z��<F=�>�;?< ~    �:��'ۺF=�>�;?< ~    6���/ݼ
�#>/�<�	     @<3�/ݼ
�#>/ݼ�	     @�3�70����^>e�N<�	     �7v�70����^>e�N��	     �v�m�*;��^>e�N<s�     ���z��<F=�>�;?<s�     Z�J�m�*;��^>e�N�s�     �7��z��<F=�>�;?�s�     Z7J�'ۺF=�>�;?<      6��='ۺF=�>�;?�      6�R8z��<F=�>�;?<      �:�=z��<F=�>�;?�      �:R8/�<
�#>/�< {    @<��/ݼ
�#>/�< {    @���m�*;��^>e�N< {    �.-�70����^>e�N< {    �-�/�<
�#>/�<t1     @�a�m�*;��^>e�N<t1     ���/�<
�#>/ݼt1     @<a�m�*;��^>e�N�t1     �7�ƚ�>    �P�e�� � �������6>��u=�P�e�� � �����=    ��e�� � ��A���ȶ=��u=�K�e�� � �C��*:�
�#>�P��%� � m�A(ô�6���u=�P��%� � mCS8*:��
�#>�E���%� � m��(ôȶ���u=�K��%� � m�S8�ȶ=��u=�K> %y   CS8�ȶ���u=�K> %y   �S8*:�=
�#>�E�= %y   �A(�*:��
�#>�E�= %y   ��(Ú���    �� Ћ �  �A�����=    �� Ћ �  �����ȶ���u=�K� Ћ �  C�´ȶ=��u=�K� Ћ �  ���*:�
�#>�P�     �� <*:��
�#>�E��     ����*:��
�#>�E�=     ���E*:�=
�#>�E�=     �A�E*:�=
�#>�E��     �A��*:>
�#>�P�     �E <��6���u=�P���� � mC���    �P���� � m�A���ȶ���u=�K���� � m�����    ����� � m�����ȶ=��u=�K>i%< ? ��S8*:�=
�#>�E�=i%< ? ���(ô�6>��u=�P�i%< ? �CS8*:>
�#>�P�i%< ? ��A(ôȶ���u=�K>�%< ? mCS8��6���u=�P��%< ? m�S8*:��
�#>�E�=�%< ? m�A(�*:�
�#>�P��%< ? m��(ôȶ���u=�K� %� �  CS8�ȶ=��u=�K� %� �  �S8*:��
�#>�E�� %� �  �A(�*:�=
�#>�E�� %� �  ��(Ú��    �P� �  �  �E <����    �> �  �  �AF����    �� �  �  �AĚ��=    �� �  �  ��Ě��=    �> �  �  ��F��>    �P� �  �  �� <��6>��u=�P�i%� � ��S8*:>
�#>�P�i%� � ���(ôȶ=��u=�K�i%� � �CS8*:�=
�#>�E��i%� � ��A(ôȶ=��u=�K>e�: ? ���´�6>��u=�P�e�: ? �C���=    �>e�: ? �������>    �P�e�: ? ��A���ȶ���u=�K>��: ? mC����    �>��: ? m�A����6���u=�P���: ? m����    �P���: ? m�������=    �> �u   �A������    �> �u   �����ȶ=��u=�K> �u   C�´ȶ���u=�K> �u   ���      vertex_count    j         array_index_data    �   0 . / / 1 0 4 2 3 3 5 4 8 6 7 7 9 8 < : ; ; = < @ > ? ?  @   @  A @   A   A   ? ? B  B A  B   B   B C A F D E E G F J H I I K J N L M M O N R P Q Q S R V T U U W V U X W X Y W \ Z [ [ ] \ ` ^ _ _ a ` d b c c e d h f g g i h       index_count    x      
   primitive             format    }       aabb    ��6�    �K��ȶ>F=�>�K�>      skeleton_aabb              blend_shape_data           	   material             PackedScene          	         names "         pumpkin    Spatial 
   tmpParent 
   transform    mesh    material/0    material/1    MeshInstance    	   variants            �?              �?              �?��L�    
ף�                      node_count             nodes        ��������       ����                      ����                      ����                                      conn_count              conns               node_paths              editable_instances              version       RSRC       [remap]

importer="scene"
type="PackedScene"
path="res://.import/pumpkin.glb-48b5d69e44e30ad0ab3ced513bb7ce59.scn"

[deps]

source_file="res://props/pumpkin.glb"
dest_files=[ "res://.import/pumpkin.glb-48b5d69e44e30ad0ab3ced513bb7ce59.scn" ]

[params]

nodes/root_type="Spatial"
nodes/root_name="Scene Root"
nodes/root_scale=1.0
nodes/custom_script=""
nodes/storage=0
nodes/use_legacy_names=false
materials/location=1
materials/storage=1
materials/keep_on_reimport=true
meshes/compress=true
meshes/ensure_tangents=true
meshes/storage=0
meshes/light_baking=0
meshes/lightmap_texel_size=0.1
skins/use_named_skins=true
external_files/store_in_subdir=false
animation/import=true
animation/fps=15
animation/filter_script=""
animation/storage=false
animation/keep_custom_tracks=false
animation/optimizer/enabled=true
animation/optimizer/max_linear_error=0.05
animation/optimizer/max_angular_error=0.01
animation/optimizer/max_angle=22
animation/optimizer/remove_unused_tracks=true
animation/clips/amount=0
animation/clip_1/name=""
animation/clip_1/start_frame=0
animation/clip_1/end_frame=0
animation/clip_1/loops=false
animation/clip_2/name=""
animation/clip_2/start_frame=0
animation/clip_2/end_frame=0
animation/clip_2/loops=false
animation/clip_3/name=""
animation/clip_3/start_frame=0
animation/clip_3/end_frame=0
animation/clip_3/loops=false
animation/clip_4/name=""
animation/clip_4/start_frame=0
animation/clip_4/end_frame=0
animation/clip_4/loops=false
animation/clip_5/name=""
animation/clip_5/start_frame=0
animation/clip_5/end_frame=0
animation/clip_5/loops=false
animation/clip_6/name=""
animation/clip_6/start_frame=0
animation/clip_6/end_frame=0
animation/clip_6/loops=false
animation/clip_7/name=""
animation/clip_7/start_frame=0
animation/clip_7/end_frame=0
animation/clip_7/loops=false
animation/clip_8/name=""
animation/clip_8/start_frame=0
animation/clip_8/end_frame=0
animation/clip_8/loops=false
animation/clip_9/name=""
animation/clip_9/start_frame=0
animation/clip_9/end_frame=0
animation/clip_9/loops=false
animation/clip_10/name=""
animation/clip_10/start_frame=0
animation/clip_10/end_frame=0
animation/clip_10/loops=false
animation/clip_11/name=""
animation/clip_11/start_frame=0
animation/clip_11/end_frame=0
animation/clip_11/loops=false
animation/clip_12/name=""
animation/clip_12/start_frame=0
animation/clip_12/end_frame=0
animation/clip_12/loops=false
animation/clip_13/name=""
animation/clip_13/start_frame=0
animation/clip_13/end_frame=0
animation/clip_13/loops=false
animation/clip_14/name=""
animation/clip_14/start_frame=0
animation/clip_14/end_frame=0
animation/clip_14/loops=false
animation/clip_15/name=""
animation/clip_15/start_frame=0
animation/clip_15/end_frame=0
animation/clip_15/loops=false
animation/clip_16/name=""
animation/clip_16/start_frame=0
animation/clip_16/end_frame=0
animation/clip_16/loops=false
animation/clip_17/name=""
animation/clip_17/start_frame=0
animation/clip_17/end_frame=0
animation/clip_17/loops=false
animation/clip_18/name=""
animation/clip_18/start_frame=0
animation/clip_18/end_frame=0
animation/clip_18/loops=false
animation/clip_19/name=""
animation/clip_19/start_frame=0
animation/clip_19/end_frame=0
animation/clip_19/loops=false
animation/clip_20/name=""
animation/clip_20/start_frame=0
animation/clip_20/end_frame=0
animation/clip_20/loops=false
animation/clip_21/name=""
animation/clip_21/start_frame=0
animation/clip_21/end_frame=0
animation/clip_21/loops=false
animation/clip_22/name=""
animation/clip_22/start_frame=0
animation/clip_22/end_frame=0
animation/clip_22/loops=false
animation/clip_23/name=""
animation/clip_23/start_frame=0
animation/clip_23/end_frame=0
animation/clip_23/loops=false
animation/clip_24/name=""
animation/clip_24/start_frame=0
animation/clip_24/end_frame=0
animation/clip_24/loops=false
animation/clip_25/name=""
animation/clip_25/start_frame=0
animation/clip_25/end_frame=0
animation/clip_25/loops=false
animation/clip_26/name=""
animation/clip_26/start_frame=0
animation/clip_26/end_frame=0
animation/clip_26/loops=false
animation/clip_27/name=""
animation/clip_27/start_frame=0
animation/clip_27/end_frame=0
animation/clip_27/loops=false
animation/clip_28/name=""
animation/clip_28/start_frame=0
animation/clip_28/end_frame=0
animation/clip_28/loops=false
animation/clip_29/name=""
animation/clip_29/start_frame=0
animation/clip_29/end_frame=0
animation/clip_29/loops=false
animation/clip_30/name=""
animation/clip_30/start_frame=0
animation/clip_30/end_frame=0
animation/clip_30/loops=false
animation/clip_31/name=""
animation/clip_31/start_frame=0
animation/clip_31/end_frame=0
animation/clip_31/loops=false
animation/clip_32/name=""
animation/clip_32/start_frame=0
animation/clip_32/end_frame=0
animation/clip_32/loops=false
animation/clip_33/name=""
animation/clip_33/start_frame=0
animation/clip_33/end_frame=0
animation/clip_33/loops=false
animation/clip_34/name=""
animation/clip_34/start_frame=0
animation/clip_34/end_frame=0
animation/clip_34/loops=false
animation/clip_35/name=""
animation/clip_35/start_frame=0
animation/clip_35/end_frame=0
animation/clip_35/loops=false
animation/clip_36/name=""
animation/clip_36/start_frame=0
animation/clip_36/end_frame=0
animation/clip_36/loops=false
animation/clip_37/name=""
animation/clip_37/start_frame=0
animation/clip_37/end_frame=0
animation/clip_37/loops=false
animation/clip_38/name=""
animation/clip_38/start_frame=0
animation/clip_38/end_frame=0
animation/clip_38/loops=false
animation/clip_39/name=""
animation/clip_39/start_frame=0
animation/clip_39/end_frame=0
animation/clip_39/loops=false
animation/clip_40/name=""
animation/clip_40/start_frame=0
animation/clip_40/end_frame=0
animation/clip_40/loops=false
animation/clip_41/name=""
animation/clip_41/start_frame=0
animation/clip_41/end_frame=0
animation/clip_41/loops=false
animation/clip_42/name=""
animation/clip_42/start_frame=0
animation/clip_42/end_frame=0
animation/clip_42/loops=false
animation/clip_43/name=""
animation/clip_43/start_frame=0
animation/clip_43/end_frame=0
animation/clip_43/loops=false
animation/clip_44/name=""
animation/clip_44/start_frame=0
animation/clip_44/end_frame=0
animation/clip_44/loops=false
animation/clip_45/name=""
animation/clip_45/start_frame=0
animation/clip_45/end_frame=0
animation/clip_45/loops=false
animation/clip_46/name=""
animation/clip_46/start_frame=0
animation/clip_46/end_frame=0
animation/clip_46/loops=false
animation/clip_47/name=""
animation/clip_47/start_frame=0
animation/clip_47/end_frame=0
animation/clip_47/loops=false
animation/clip_48/name=""
animation/clip_48/start_frame=0
animation/clip_48/end_frame=0
animation/clip_48/loops=false
animation/clip_49/name=""
animation/clip_49/start_frame=0
animation/clip_49/end_frame=0
animation/clip_49/loops=false
animation/clip_50/name=""
animation/clip_50/start_frame=0
animation/clip_50/end_frame=0
animation/clip_50/loops=false
animation/clip_51/name=""
animation/clip_51/start_frame=0
animation/clip_51/end_frame=0
animation/clip_51/loops=false
animation/clip_52/name=""
animation/clip_52/start_frame=0
animation/clip_52/end_frame=0
animation/clip_52/loops=false
animation/clip_53/name=""
animation/clip_53/start_frame=0
animation/clip_53/end_frame=0
animation/clip_53/loops=false
animation/clip_54/name=""
animation/clip_54/start_frame=0
animation/clip_54/end_frame=0
animation/clip_54/loops=false
animation/clip_55/name=""
animation/clip_55/start_frame=0
animation/clip_55/end_frame=0
animation/clip_55/loops=false
animation/clip_56/name=""
animation/clip_56/start_frame=0
animation/clip_56/end_frame=0
animation/clip_56/loops=false
animation/clip_57/name=""
animation/clip_57/start_frame=0
animation/clip_57/end_frame=0
animation/clip_57/loops=false
animation/clip_58/name=""
animation/clip_58/start_frame=0
animation/clip_58/end_frame=0
animation/clip_58/loops=false
animation/clip_59/name=""
animation/clip_59/start_frame=0
animation/clip_59/end_frame=0
animation/clip_59/loops=false
animation/clip_60/name=""
animation/clip_60/start_frame=0
animation/clip_60/end_frame=0
animation/clip_60/loops=false
animation/clip_61/name=""
animation/clip_61/start_frame=0
animation/clip_61/end_frame=0
animation/clip_61/loops=false
animation/clip_62/name=""
animation/clip_62/start_frame=0
animation/clip_62/end_frame=0
animation/clip_62/loops=false
animation/clip_63/name=""
animation/clip_63/start_frame=0
animation/clip_63/end_frame=0
animation/clip_63/loops=false
animation/clip_64/name=""
animation/clip_64/start_frame=0
animation/clip_64/end_frame=0
animation/clip_64/loops=false
animation/clip_65/name=""
animation/clip_65/start_frame=0
animation/clip_65/end_frame=0
animation/clip_65/loops=false
animation/clip_66/name=""
animation/clip_66/start_frame=0
animation/clip_66/end_frame=0
animation/clip_66/loops=false
animation/clip_67/name=""
animation/clip_67/start_frame=0
animation/clip_67/end_frame=0
animation/clip_67/loops=false
animation/clip_68/name=""
animation/clip_68/start_frame=0
animation/clip_68/end_frame=0
animation/clip_68/loops=false
animation/clip_69/name=""
animation/clip_69/start_frame=0
animation/clip_69/end_frame=0
animation/clip_69/loops=false
animation/clip_70/name=""
animation/clip_70/start_frame=0
animation/clip_70/end_frame=0
animation/clip_70/loops=false
animation/clip_71/name=""
animation/clip_71/start_frame=0
animation/clip_71/end_frame=0
animation/clip_71/loops=false
animation/clip_72/name=""
animation/clip_72/start_frame=0
animation/clip_72/end_frame=0
animation/clip_72/loops=false
animation/clip_73/name=""
animation/clip_73/start_frame=0
animation/clip_73/end_frame=0
animation/clip_73/loops=false
animation/clip_74/name=""
animation/clip_74/start_frame=0
animation/clip_74/end_frame=0
animation/clip_74/loops=false
animation/clip_75/name=""
animation/clip_75/start_frame=0
animation/clip_75/end_frame=0
animation/clip_75/loops=false
animation/clip_76/name=""
animation/clip_76/start_frame=0
animation/clip_76/end_frame=0
animation/clip_76/loops=false
animation/clip_77/name=""
animation/clip_77/start_frame=0
animation/clip_77/end_frame=0
animation/clip_77/loops=false
animation/clip_78/name=""
animation/clip_78/start_frame=0
animation/clip_78/end_frame=0
animation/clip_78/loops=false
animation/clip_79/name=""
animation/clip_79/start_frame=0
animation/clip_79/end_frame=0
animation/clip_79/loops=false
animation/clip_80/name=""
animation/clip_80/start_frame=0
animation/clip_80/end_frame=0
animation/clip_80/loops=false
animation/clip_81/name=""
animation/clip_81/start_frame=0
animation/clip_81/end_frame=0
animation/clip_81/loops=false
animation/clip_82/name=""
animation/clip_82/start_frame=0
animation/clip_82/end_frame=0
animation/clip_82/loops=false
animation/clip_83/name=""
animation/clip_83/start_frame=0
animation/clip_83/end_frame=0
animation/clip_83/loops=false
animation/clip_84/name=""
animation/clip_84/start_frame=0
animation/clip_84/end_frame=0
animation/clip_84/loops=false
animation/clip_85/name=""
animation/clip_85/start_frame=0
animation/clip_85/end_frame=0
animation/clip_85/loops=false
animation/clip_86/name=""
animation/clip_86/start_frame=0
animation/clip_86/end_frame=0
animation/clip_86/loops=false
animation/clip_87/name=""
animation/clip_87/start_frame=0
animation/clip_87/end_frame=0
animation/clip_87/loops=false
animation/clip_88/name=""
animation/clip_88/start_frame=0
animation/clip_88/end_frame=0
animation/clip_88/loops=false
animation/clip_89/name=""
animation/clip_89/start_frame=0
animation/clip_89/end_frame=0
animation/clip_89/loops=false
animation/clip_90/name=""
animation/clip_90/start_frame=0
animation/clip_90/end_frame=0
animation/clip_90/loops=false
animation/clip_91/name=""
animation/clip_91/start_frame=0
animation/clip_91/end_frame=0
animation/clip_91/loops=false
animation/clip_92/name=""
animation/clip_92/start_frame=0
animation/clip_92/end_frame=0
animation/clip_92/loops=false
animation/clip_93/name=""
animation/clip_93/start_frame=0
animation/clip_93/end_frame=0
animation/clip_93/loops=false
animation/clip_94/name=""
animation/clip_94/start_frame=0
animation/clip_94/end_frame=0
animation/clip_94/loops=false
animation/clip_95/name=""
animation/clip_95/start_frame=0
animation/clip_95/end_frame=0
animation/clip_95/loops=false
animation/clip_96/name=""
animation/clip_96/start_frame=0
animation/clip_96/end_frame=0
animation/clip_96/loops=false
animation/clip_97/name=""
animation/clip_97/start_frame=0
animation/clip_97/end_frame=0
animation/clip_97/loops=false
animation/clip_98/name=""
animation/clip_98/start_frame=0
animation/clip_98/end_frame=0
animation/clip_98/loops=false
animation/clip_99/name=""
animation/clip_99/start_frame=0
animation/clip_99/end_frame=0
animation/clip_99/loops=false
animation/clip_100/name=""
animation/clip_100/start_frame=0
animation/clip_100/end_frame=0
animation/clip_100/loops=false
animation/clip_101/name=""
animation/clip_101/start_frame=0
animation/clip_101/end_frame=0
animation/clip_101/loops=false
animation/clip_102/name=""
animation/clip_102/start_frame=0
animation/clip_102/end_frame=0
animation/clip_102/loops=false
animation/clip_103/name=""
animation/clip_103/start_frame=0
animation/clip_103/end_frame=0
animation/clip_103/loops=false
animation/clip_104/name=""
animation/clip_104/start_frame=0
animation/clip_104/end_frame=0
animation/clip_104/loops=false
animation/clip_105/name=""
animation/clip_105/start_frame=0
animation/clip_105/end_frame=0
animation/clip_105/loops=false
animation/clip_106/name=""
animation/clip_106/start_frame=0
animation/clip_106/end_frame=0
animation/clip_106/loops=false
animation/clip_107/name=""
animation/clip_107/start_frame=0
animation/clip_107/end_frame=0
animation/clip_107/loops=false
animation/clip_108/name=""
animation/clip_108/start_frame=0
animation/clip_108/end_frame=0
animation/clip_108/loops=false
animation/clip_109/name=""
animation/clip_109/start_frame=0
animation/clip_109/end_frame=0
animation/clip_109/loops=false
animation/clip_110/name=""
animation/clip_110/start_frame=0
animation/clip_110/end_frame=0
animation/clip_110/loops=false
animation/clip_111/name=""
animation/clip_111/start_frame=0
animation/clip_111/end_frame=0
animation/clip_111/loops=false
animation/clip_112/name=""
animation/clip_112/start_frame=0
animation/clip_112/end_frame=0
animation/clip_112/loops=false
animation/clip_113/name=""
animation/clip_113/start_frame=0
animation/clip_113/end_frame=0
animation/clip_113/loops=false
animation/clip_114/name=""
animation/clip_114/start_frame=0
animation/clip_114/end_frame=0
animation/clip_114/loops=false
animation/clip_115/name=""
animation/clip_115/start_frame=0
animation/clip_115/end_frame=0
animation/clip_115/loops=false
animation/clip_116/name=""
animation/clip_116/start_frame=0
animation/clip_116/end_frame=0
animation/clip_116/loops=false
animation/clip_117/name=""
animation/clip_117/start_frame=0
animation/clip_117/end_frame=0
animation/clip_117/loops=false
animation/clip_118/name=""
animation/clip_118/start_frame=0
animation/clip_118/end_frame=0
animation/clip_118/loops=false
animation/clip_119/name=""
animation/clip_119/start_frame=0
animation/clip_119/end_frame=0
animation/clip_119/loops=false
animation/clip_120/name=""
animation/clip_120/start_frame=0
animation/clip_120/end_frame=0
animation/clip_120/loops=false
animation/clip_121/name=""
animation/clip_121/start_frame=0
animation/clip_121/end_frame=0
animation/clip_121/loops=false
animation/clip_122/name=""
animation/clip_122/start_frame=0
animation/clip_122/end_frame=0
animation/clip_122/loops=false
animation/clip_123/name=""
animation/clip_123/start_frame=0
animation/clip_123/end_frame=0
animation/clip_123/loops=false
animation/clip_124/name=""
animation/clip_124/start_frame=0
animation/clip_124/end_frame=0
animation/clip_124/loops=false
animation/clip_125/name=""
animation/clip_125/start_frame=0
animation/clip_125/end_frame=0
animation/clip_125/loops=false
animation/clip_126/name=""
animation/clip_126/start_frame=0
animation/clip_126/end_frame=0
animation/clip_126/loops=false
animation/clip_127/name=""
animation/clip_127/start_frame=0
animation/clip_127/end_frame=0
animation/clip_127/loops=false
animation/clip_128/name=""
animation/clip_128/start_frame=0
animation/clip_128/end_frame=0
animation/clip_128/loops=false
animation/clip_129/name=""
animation/clip_129/start_frame=0
animation/clip_129/end_frame=0
animation/clip_129/loops=false
animation/clip_130/name=""
animation/clip_130/start_frame=0
animation/clip_130/end_frame=0
animation/clip_130/loops=false
animation/clip_131/name=""
animation/clip_131/start_frame=0
animation/clip_131/end_frame=0
animation/clip_131/loops=false
animation/clip_132/name=""
animation/clip_132/start_frame=0
animation/clip_132/end_frame=0
animation/clip_132/loops=false
animation/clip_133/name=""
animation/clip_133/start_frame=0
animation/clip_133/end_frame=0
animation/clip_133/loops=false
animation/clip_134/name=""
animation/clip_134/start_frame=0
animation/clip_134/end_frame=0
animation/clip_134/loops=false
animation/clip_135/name=""
animation/clip_135/start_frame=0
animation/clip_135/end_frame=0
animation/clip_135/loops=false
animation/clip_136/name=""
animation/clip_136/start_frame=0
animation/clip_136/end_frame=0
animation/clip_136/loops=false
animation/clip_137/name=""
animation/clip_137/start_frame=0
animation/clip_137/end_frame=0
animation/clip_137/loops=false
animation/clip_138/name=""
animation/clip_138/start_frame=0
animation/clip_138/end_frame=0
animation/clip_138/loops=false
animation/clip_139/name=""
animation/clip_139/start_frame=0
animation/clip_139/end_frame=0
animation/clip_139/loops=false
animation/clip_140/name=""
animation/clip_140/start_frame=0
animation/clip_140/end_frame=0
animation/clip_140/loops=false
animation/clip_141/name=""
animation/clip_141/start_frame=0
animation/clip_141/end_frame=0
animation/clip_141/loops=false
animation/clip_142/name=""
animation/clip_142/start_frame=0
animation/clip_142/end_frame=0
animation/clip_142/loops=false
animation/clip_143/name=""
animation/clip_143/start_frame=0
animation/clip_143/end_frame=0
animation/clip_143/loops=false
animation/clip_144/name=""
animation/clip_144/start_frame=0
animation/clip_144/end_frame=0
animation/clip_144/loops=false
animation/clip_145/name=""
animation/clip_145/start_frame=0
animation/clip_145/end_frame=0
animation/clip_145/loops=false
animation/clip_146/name=""
animation/clip_146/start_frame=0
animation/clip_146/end_frame=0
animation/clip_146/loops=false
animation/clip_147/name=""
animation/clip_147/start_frame=0
animation/clip_147/end_frame=0
animation/clip_147/loops=false
animation/clip_148/name=""
animation/clip_148/start_frame=0
animation/clip_148/end_frame=0
animation/clip_148/loops=false
animation/clip_149/name=""
animation/clip_149/start_frame=0
animation/clip_149/end_frame=0
animation/clip_149/loops=false
animation/clip_150/name=""
animation/clip_150/start_frame=0
animation/clip_150/end_frame=0
animation/clip_150/loops=false
animation/clip_151/name=""
animation/clip_151/start_frame=0
animation/clip_151/end_frame=0
animation/clip_151/loops=false
animation/clip_152/name=""
animation/clip_152/start_frame=0
animation/clip_152/end_frame=0
animation/clip_152/loops=false
animation/clip_153/name=""
animation/clip_153/start_frame=0
animation/clip_153/end_frame=0
animation/clip_153/loops=false
animation/clip_154/name=""
animation/clip_154/start_frame=0
animation/clip_154/end_frame=0
animation/clip_154/loops=false
animation/clip_155/name=""
animation/clip_155/start_frame=0
animation/clip_155/end_frame=0
animation/clip_155/loops=false
animation/clip_156/name=""
animation/clip_156/start_frame=0
animation/clip_156/end_frame=0
animation/clip_156/loops=false
animation/clip_157/name=""
animation/clip_157/start_frame=0
animation/clip_157/end_frame=0
animation/clip_157/loops=false
animation/clip_158/name=""
animation/clip_158/start_frame=0
animation/clip_158/end_frame=0
animation/clip_158/loops=false
animation/clip_159/name=""
animation/clip_159/start_frame=0
animation/clip_159/end_frame=0
animation/clip_159/loops=false
animation/clip_160/name=""
animation/clip_160/start_frame=0
animation/clip_160/end_frame=0
animation/clip_160/loops=false
animation/clip_161/name=""
animation/clip_161/start_frame=0
animation/clip_161/end_frame=0
animation/clip_161/loops=false
animation/clip_162/name=""
animation/clip_162/start_frame=0
animation/clip_162/end_frame=0
animation/clip_162/loops=false
animation/clip_163/name=""
animation/clip_163/start_frame=0
animation/clip_163/end_frame=0
animation/clip_163/loops=false
animation/clip_164/name=""
animation/clip_164/start_frame=0
animation/clip_164/end_frame=0
animation/clip_164/loops=false
animation/clip_165/name=""
animation/clip_165/start_frame=0
animation/clip_165/end_frame=0
animation/clip_165/loops=false
animation/clip_166/name=""
animation/clip_166/start_frame=0
animation/clip_166/end_frame=0
animation/clip_166/loops=false
animation/clip_167/name=""
animation/clip_167/start_frame=0
animation/clip_167/end_frame=0
animation/clip_167/loops=false
animation/clip_168/name=""
animation/clip_168/start_frame=0
animation/clip_168/end_frame=0
animation/clip_168/loops=false
animation/clip_169/name=""
animation/clip_169/start_frame=0
animation/clip_169/end_frame=0
animation/clip_169/loops=false
animation/clip_170/name=""
animation/clip_170/start_frame=0
animation/clip_170/end_frame=0
animation/clip_170/loops=false
animation/clip_171/name=""
animation/clip_171/start_frame=0
animation/clip_171/end_frame=0
animation/clip_171/loops=false
animation/clip_172/name=""
animation/clip_172/start_frame=0
animation/clip_172/end_frame=0
animation/clip_172/loops=false
animation/clip_173/name=""
animation/clip_173/start_frame=0
animation/clip_173/end_frame=0
animation/clip_173/loops=false
animation/clip_174/name=""
animation/clip_174/start_frame=0
animation/clip_174/end_frame=0
animation/clip_174/loops=false
animation/clip_175/name=""
animation/clip_175/start_frame=0
animation/clip_175/end_frame=0
animation/clip_175/loops=false
animation/clip_176/name=""
animation/clip_176/start_frame=0
animation/clip_176/end_frame=0
animation/clip_176/loops=false
animation/clip_177/name=""
animation/clip_177/start_frame=0
animation/clip_177/end_frame=0
animation/clip_177/loops=false
animation/clip_178/name=""
animation/clip_178/start_frame=0
animation/clip_178/end_frame=0
animation/clip_178/loops=false
animation/clip_179/name=""
animation/clip_179/start_frame=0
animation/clip_179/end_frame=0
animation/clip_179/loops=false
animation/clip_180/name=""
animation/clip_180/start_frame=0
animation/clip_180/end_frame=0
animation/clip_180/loops=false
animation/clip_181/name=""
animation/clip_181/start_frame=0
animation/clip_181/end_frame=0
animation/clip_181/loops=false
animation/clip_182/name=""
animation/clip_182/start_frame=0
animation/clip_182/end_frame=0
animation/clip_182/loops=false
animation/clip_183/name=""
animation/clip_183/start_frame=0
animation/clip_183/end_frame=0
animation/clip_183/loops=false
animation/clip_184/name=""
animation/clip_184/start_frame=0
animation/clip_184/end_frame=0
animation/clip_184/loops=false
animation/clip_185/name=""
animation/clip_185/start_frame=0
animation/clip_185/end_frame=0
animation/clip_185/loops=false
animation/clip_186/name=""
animation/clip_186/start_frame=0
animation/clip_186/end_frame=0
animation/clip_186/loops=false
animation/clip_187/name=""
animation/clip_187/start_frame=0
animation/clip_187/end_frame=0
animation/clip_187/loops=false
animation/clip_188/name=""
animation/clip_188/start_frame=0
animation/clip_188/end_frame=0
animation/clip_188/loops=false
animation/clip_189/name=""
animation/clip_189/start_frame=0
animation/clip_189/end_frame=0
animation/clip_189/loops=false
animation/clip_190/name=""
animation/clip_190/start_frame=0
animation/clip_190/end_frame=0
animation/clip_190/loops=false
animation/clip_191/name=""
animation/clip_191/start_frame=0
animation/clip_191/end_frame=0
animation/clip_191/loops=false
animation/clip_192/name=""
animation/clip_192/start_frame=0
animation/clip_192/end_frame=0
animation/clip_192/loops=false
animation/clip_193/name=""
animation/clip_193/start_frame=0
animation/clip_193/end_frame=0
animation/clip_193/loops=false
animation/clip_194/name=""
animation/clip_194/start_frame=0
animation/clip_194/end_frame=0
animation/clip_194/loops=false
animation/clip_195/name=""
animation/clip_195/start_frame=0
animation/clip_195/end_frame=0
animation/clip_195/loops=false
animation/clip_196/name=""
animation/clip_196/start_frame=0
animation/clip_196/end_frame=0
animation/clip_196/loops=false
animation/clip_197/name=""
animation/clip_197/start_frame=0
animation/clip_197/end_frame=0
animation/clip_197/loops=false
animation/clip_198/name=""
animation/clip_198/start_frame=0
animation/clip_198/end_frame=0
animation/clip_198/loops=false
animation/clip_199/name=""
animation/clip_199/start_frame=0
animation/clip_199/end_frame=0
animation/clip_199/loops=false
animation/clip_200/name=""
animation/clip_200/start_frame=0
animation/clip_200/end_frame=0
animation/clip_200/loops=false
animation/clip_201/name=""
animation/clip_201/start_frame=0
animation/clip_201/end_frame=0
animation/clip_201/loops=false
animation/clip_202/name=""
animation/clip_202/start_frame=0
animation/clip_202/end_frame=0
animation/clip_202/loops=false
animation/clip_203/name=""
animation/clip_203/start_frame=0
animation/clip_203/end_frame=0
animation/clip_203/loops=false
animation/clip_204/name=""
animation/clip_204/start_frame=0
animation/clip_204/end_frame=0
animation/clip_204/loops=false
animation/clip_205/name=""
animation/clip_205/start_frame=0
animation/clip_205/end_frame=0
animation/clip_205/loops=false
animation/clip_206/name=""
animation/clip_206/start_frame=0
animation/clip_206/end_frame=0
animation/clip_206/loops=false
animation/clip_207/name=""
animation/clip_207/start_frame=0
animation/clip_207/end_frame=0
animation/clip_207/loops=false
animation/clip_208/name=""
animation/clip_208/start_frame=0
animation/clip_208/end_frame=0
animation/clip_208/loops=false
animation/clip_209/name=""
animation/clip_209/start_frame=0
animation/clip_209/end_frame=0
animation/clip_209/loops=false
animation/clip_210/name=""
animation/clip_210/start_frame=0
animation/clip_210/end_frame=0
animation/clip_210/loops=false
animation/clip_211/name=""
animation/clip_211/start_frame=0
animation/clip_211/end_frame=0
animation/clip_211/loops=false
animation/clip_212/name=""
animation/clip_212/start_frame=0
animation/clip_212/end_frame=0
animation/clip_212/loops=false
animation/clip_213/name=""
animation/clip_213/start_frame=0
animation/clip_213/end_frame=0
animation/clip_213/loops=false
animation/clip_214/name=""
animation/clip_214/start_frame=0
animation/clip_214/end_frame=0
animation/clip_214/loops=false
animation/clip_215/name=""
animation/clip_215/start_frame=0
animation/clip_215/end_frame=0
animation/clip_215/loops=false
animation/clip_216/name=""
animation/clip_216/start_frame=0
animation/clip_216/end_frame=0
animation/clip_216/loops=false
animation/clip_217/name=""
animation/clip_217/start_frame=0
animation/clip_217/end_frame=0
animation/clip_217/loops=false
animation/clip_218/name=""
animation/clip_218/start_frame=0
animation/clip_218/end_frame=0
animation/clip_218/loops=false
animation/clip_219/name=""
animation/clip_219/start_frame=0
animation/clip_219/end_frame=0
animation/clip_219/loops=false
animation/clip_220/name=""
animation/clip_220/start_frame=0
animation/clip_220/end_frame=0
animation/clip_220/loops=false
animation/clip_221/name=""
animation/clip_221/start_frame=0
animation/clip_221/end_frame=0
animation/clip_221/loops=false
animation/clip_222/name=""
animation/clip_222/start_frame=0
animation/clip_222/end_frame=0
animation/clip_222/loops=false
animation/clip_223/name=""
animation/clip_223/start_frame=0
animation/clip_223/end_frame=0
animation/clip_223/loops=false
animation/clip_224/name=""
animation/clip_224/start_frame=0
animation/clip_224/end_frame=0
animation/clip_224/loops=false
animation/clip_225/name=""
animation/clip_225/start_frame=0
animation/clip_225/end_frame=0
animation/clip_225/loops=false
animation/clip_226/name=""
animation/clip_226/start_frame=0
animation/clip_226/end_frame=0
animation/clip_226/loops=false
animation/clip_227/name=""
animation/clip_227/start_frame=0
animation/clip_227/end_frame=0
animation/clip_227/loops=false
animation/clip_228/name=""
animation/clip_228/start_frame=0
animation/clip_228/end_frame=0
animation/clip_228/loops=false
animation/clip_229/name=""
animation/clip_229/start_frame=0
animation/clip_229/end_frame=0
animation/clip_229/loops=false
animation/clip_230/name=""
animation/clip_230/start_frame=0
animation/clip_230/end_frame=0
animation/clip_230/loops=false
animation/clip_231/name=""
animation/clip_231/start_frame=0
animation/clip_231/end_frame=0
animation/clip_231/loops=false
animation/clip_232/name=""
animation/clip_232/start_frame=0
animation/clip_232/end_frame=0
animation/clip_232/loops=false
animation/clip_233/name=""
animation/clip_233/start_frame=0
animation/clip_233/end_frame=0
animation/clip_233/loops=false
animation/clip_234/name=""
animation/clip_234/start_frame=0
animation/clip_234/end_frame=0
animation/clip_234/loops=false
animation/clip_235/name=""
animation/clip_235/start_frame=0
animation/clip_235/end_frame=0
animation/clip_235/loops=false
animation/clip_236/name=""
animation/clip_236/start_frame=0
animation/clip_236/end_frame=0
animation/clip_236/loops=false
animation/clip_237/name=""
animation/clip_237/start_frame=0
animation/clip_237/end_frame=0
animation/clip_237/loops=false
animation/clip_238/name=""
animation/clip_238/start_frame=0
animation/clip_238/end_frame=0
animation/clip_238/loops=false
animation/clip_239/name=""
animation/clip_239/start_frame=0
animation/clip_239/end_frame=0
animation/clip_239/loops=false
animation/clip_240/name=""
animation/clip_240/start_frame=0
animation/clip_240/end_frame=0
animation/clip_240/loops=false
animation/clip_241/name=""
animation/clip_241/start_frame=0
animation/clip_241/end_frame=0
animation/clip_241/loops=false
animation/clip_242/name=""
animation/clip_242/start_frame=0
animation/clip_242/end_frame=0
animation/clip_242/loops=false
animation/clip_243/name=""
animation/clip_243/start_frame=0
animation/clip_243/end_frame=0
animation/clip_243/loops=false
animation/clip_244/name=""
animation/clip_244/start_frame=0
animation/clip_244/end_frame=0
animation/clip_244/loops=false
animation/clip_245/name=""
animation/clip_245/start_frame=0
animation/clip_245/end_frame=0
animation/clip_245/loops=false
animation/clip_246/name=""
animation/clip_246/start_frame=0
animation/clip_246/end_frame=0
animation/clip_246/loops=false
animation/clip_247/name=""
animation/clip_247/start_frame=0
animation/clip_247/end_frame=0
animation/clip_247/loops=false
animation/clip_248/name=""
animation/clip_248/start_frame=0
animation/clip_248/end_frame=0
animation/clip_248/loops=false
animation/clip_249/name=""
animation/clip_249/start_frame=0
animation/clip_249/end_frame=0
animation/clip_249/loops=false
animation/clip_250/name=""
animation/clip_250/start_frame=0
animation/clip_250/end_frame=0
animation/clip_250/loops=false
animation/clip_251/name=""
animation/clip_251/start_frame=0
animation/clip_251/end_frame=0
animation/clip_251/loops=false
animation/clip_252/name=""
animation/clip_252/start_frame=0
animation/clip_252/end_frame=0
animation/clip_252/loops=false
animation/clip_253/name=""
animation/clip_253/start_frame=0
animation/clip_253/end_frame=0
animation/clip_253/loops=false
animation/clip_254/name=""
animation/clip_254/start_frame=0
animation/clip_254/end_frame=0
animation/clip_254/loops=false
animation/clip_255/name=""
animation/clip_255/start_frame=0
animation/clip_255/end_frame=0
animation/clip_255/loops=false
animation/clip_256/name=""
animation/clip_256/start_frame=0
animation/clip_256/end_frame=0
animation/clip_256/loops=false
        RSRC                    SpatialMaterial                                                                 <      resource_local_to_scene    resource_name    render_priority 
   next_pass    flags_transparent    flags_use_shadow_to_opacity    flags_unshaded    flags_vertex_lighting    flags_no_depth_test    flags_use_point_size    flags_world_triplanar    flags_fixed_size    flags_albedo_tex_force_srgb    flags_do_not_receive_shadows    flags_disable_ambient_light    flags_ensure_correct_normals    vertex_color_use_as_albedo    vertex_color_is_srgb    params_diffuse_mode    params_specular_mode    params_blend_mode    params_cull_mode    params_depth_draw_mode    params_line_width    params_point_size    params_billboard_mode    params_billboard_keep_scale    params_grow    params_use_alpha_scissor    albedo_color    albedo_texture 	   metallic    metallic_specular    metallic_texture    metallic_texture_channel 
   roughness    roughness_texture    roughness_texture_channel    emission_enabled    normal_enabled    rim_enabled    clearcoat_enabled    anisotropy_enabled    ao_enabled    depth_enabled    subsurf_scatter_enabled    transmission_enabled    refraction_enabled    detail_enabled 
   uv1_scale    uv1_offset    uv1_triplanar    uv1_triplanar_sharpness 
   uv2_scale    uv2_offset    uv2_triplanar    uv2_triplanar_sharpness    proximity_fade_enable    distance_fade_mode    script           res://props/pumpkin.material �         SpatialMaterial             pumpkin                ��}?W47?8�>  �?        �?RSRC      RSCC      @  �  (�/�`@ ��h7Pm�0���ʨ�����mѶ�%�<[nj�$�Ƚ�"�^c���������-~�`�#T U X �\�����
Y�tM)��a��@����F<����8�5�d�ܣs5��E�p�9���01�F�.�ie���;|].��X�}m���5�[]��S8�sVꄻ����a.�!\�q*�HL���!U�L��Al�
�u��d(��n��Fj�RPD2j�� �5�P!e���&�+9��!b�����#k&��BƮI#�Z���?pܧ�/�*s&F״u��N�%F����Z�4������*	k=�B1\K��z6F�äB464$�oA��{8a�A�!C�%@��s�%Gs�����q �r�/��]s*T� �N'+�-�D�^42�(.O^��t��.v3���&�h����A�����Q12�̌���IaP*��3E�"1��������I���nӂ����͵f��ʅuL�-���;4�;T�Z�����G���W�r��9F���p��� �S5��6|n���ζ�Ǔ���sj�30�	�f��
z+S<痜6�kf���$�͗�P���Ę��W�"X�ccfgJ�aO.����{������<�p^[\��(�:,�0D��-'t�~�y��@��&��H:'��#Ɍ��Q�ס���z���՘�B%�M^%U�7&��.RSCC           RSRC                    PackedScene                                                                 	      resource_local_to_scene    resource_name    lightmap_size_hint    blend_shape_mode    custom_aabb    surfaces/0    surfaces/1    script 	   _bundled    	   Material    res://pumpkin.material 	   Material    res://metal.material    
   local://1 �      
   local://2 �      
   ArrayMesh             pumpkinTall       
         array_data    �	  z�ؽ\�B>   �     *� <z�X�\�B>����     *�6�z�X�\�B>���=     *��D2ZG�\�B>   �     �� <2ZǼ\�B>n�,=     ��QAz�X=\�B>���=     *@�D2Z�<\�B>n�,=     �;QA2ZG=\�B>   �     �? <2ZǼ\�B>n�,�     ��F�z�X=\�B>����     *@6�2Z�<\�B>n�,�     �;F�z��=\�B>   �     *D <q��=)\�=q��=k�= ? �z���q�>)\�=   �k�= ? �zA����u=    ���=k�= ? ����*���=       �k�= ? ��@�*���=       �k�� � ����*q�>)\�=   �k�� � �z�����u=    ��Խk�� � ��@�*q��=)\�=q���k�� � �zA��q���)\�=q��=�= ? mzA��q��)\�=   ��= ? mz���z�X�\�B>���=�= ? m*@m�z�ؽ\�B>   ��= ? m*�m�q���)\�=q��� � �  zA��q��=)\�=q��� � �  z���z�X�\�B>���� � �  *@m�z�X=\�B>���� � �  *�m�q��)\�=   ���� � mzA������       ���� � m�@�*q���)\�=q������ � mz�����u�    ��Խ��� � m���*��u�    ��Խ � �  �@�*��u=    ��Խ � �  ���*q���)\�=q��� � �  zA��q��=)\�=q��� � �  z�������       � �  �  �D <��u�    ���= �  �  �@E��u�    ��Խ �  �  �@.�u=    ��Խ �  �  ��.�u=    ���= �  �  ��E���=       � �  �  �� <q��=)\�=q��=j= ? �z���z�X=\�B>���=j= ? �*�m�q�>)\�=   �j= ? �zA��z��=\�B>   �j= ? �*@m�q��=)\�=q��= {   zA��q���)\�=q��= {   z���z�X=\�B>���= {   *@m�z�X�\�B>���= {   *�mŐ�u=    ���= �{   �@�*��u�    ���= �{   ���*q��=)\�=q��= �{ ~  zA��q���)\�=q��= �{ ~  z���z�ؽ\�B>   ��� � m*@m�q��)\�=   ��� � mzA��z�X�\�B>������ � m*�m�q���)\�=q����� � mz���q�>)\�=   �j� � �z���z��=\�B>   �j� � �*�m�q��=)\�=q���j� � �zA��z�X=\�B>����j� � �*@m�q���)\�=q��=��= ? mzA����u�    ���=��= ? m�@�*q��)\�=   ���= ? mz�������       ���= ? m���*
ף�\�B>
ף� �    L:8�
ף<\�B>
ף� �    L�8�X94��k>`�P� �    �.��5^�<�k>`�P� �    *���
ף�\�B>
ף<�2     L:��
ף�\�B>
ף��2     L���X94��k>`�P<�2     8E�X94��k>`�P��2     �E�
ף<\�B>
ף<~�     L���5^�<�k>`�P<~�     ��
ף<\�B>
ף�~�     L:��5^�<�k>`�P�~�     8�5^�<�k>`�P< }    *;��X94��k>`�P< }    �����	<��>�	< }    M5���	���>�	< }    M���5^�<�k>`�P<r6     ����	<��>�	<r6     M��5^�<�k>`�P�r6     8���	<��>�	�r6     M5�
ף<\�B>
ף< |    L:8�
ף�\�B>
ף< |    L�8�5^�<�k>`�P< |    *;��X94��k>`�P< |    ����X94��k>`�P<��     8��X94��k>`�P���     ����	���>�	<��     M5���	���>�	���     M���
ף�\�B>
ף<      L�&?
ף<\�B>
ף<      L:&?
ף<\�B>
ף�      L:�2
ף�\�B>
ף�      L��2�	���>�	<      M�S=�	���>�	�      M�Y9�	<��>�	<      M5S=�	<��>�	�      M5Y9X94��k>`�P� �    �.��5^�<�k>`�P� �    *����	���>�	� �    M5���	<��>�	� �    M���      vertex_count    j         array_index_data    �                          	  	   	 
  	  
 	                                 "   ! ! # " & $ % % ' & % ( ' ( ) ' , * + + - , 0 . / / 1 0 4 2 3 3 5 4 8 6 7 7 9 8 < : ; ; = < @ > ? ? A @       index_count    x      
   primitive             format    }       aabb    q��    q���q��>��>r�v>      skeleton_aabb              blend_shape_data           	   material                 
         array_data    �	  z�ؽ\�B>   �      *� <z�X�\�B>����      *�6�z�X�\�B>���=      *��D2ZG�\�B>   �     �� <2ZǼ\�B>n�,=     ��QAz�X=\�B>���=      *@�D2Z�<\�B>n�,=     �;QA2ZG=\�B>   �     �? <2ZǼ\�B>n�,�     ��F�z�X=\�B>����      *@6�2Z�<\�B>n�,�     �;F�z��=\�B>   �      *D <q��=)\�=q��=k�=    z���q�>)\�=   �k�=    zA����u=    ���=k�=    ���*���=       �k�=    �@�*���=       �k��    ���*q�>)\�=   �k��    z�����u=    ��Խk��    �@�*q��=)\�=q���k��    zA��q���)\�=q��=�=    zA��q��)\�=   ��=    z���z�X�\�B>���=�=    *@m�z�ؽ\�B>   ��=    *�m�q���)\�=q��� �    zA��q��=)\�=q��� �    z���z�X�\�B>���� �    *@m�z�X=\�B>���� �    *�m�q��)\�=   ����    zA������       ����    �@�*q���)\�=q������    z�����u�    ��Խ���    ���*��u�    ��Խ �    �@�*��u=    ��Խ �    ���*q���)\�=q��� �    zA��q��=)\�=q��� �    z�������       � �     �D <��u�    ���= �     �@E��u�    ��Խ �     �@.�u=    ��Խ �     ��.�u=    ���= �     ��E���=       � �     �� <q��=)\�=q��=j=    z���z�X=\�B>���=j=    *�m�q�>)\�=   �j=    zA��z��=\�B>   �j=    *@m�q��=)\�=q��= {    zA��q���)\�=q��= {    z���z�X=\�B>���= {    *@m�z�X�\�B>���= {    *�mŐ�u=    ���= �{    �@�*��u�    ���= �{    ���*q��=)\�=q��= �{    zA��q���)\�=q��= �{    z���z�ؽ\�B>   ���    *@m�q��)\�=   ���    zA��z�X�\�B>������    *�m�q���)\�=q�����    z���q�>)\�=   �j�    z���z��=\�B>   �j�    *�m�q��=)\�=q���j�    zA��z�X=\�B>����j�    *@m�q���)\�=q��=��=    zA����u�    ���=��=    �@�*q��)\�=   ���=    z�������       ���=    ���*
ף�\�B>
ף� � �  L:8�
ף<\�B>
ף� � �  L�8�X94��k>`�P� � �  �.��5^�<�k>`�P� � �  *���
ף�\�B>
ף<�2    L:��
ף�\�B>
ף��2    L���X94��k>`�P<�2    ~8E�X94��k>`�P��2    ~�E�
ף<\�B>
ף<~�    �L���5^�<�k>`�P<~�    ���
ף<\�B>
ף�~�    �L:��5^�<�k>`�P�~�    �8�5^�<�k>`�P< } ~  *;��X94��k>`�P< }   �����	<��>�	< }   M5���	���>�	< }   M���5^�<�k>`�P<r6    �����	<��>�	<r6    �M��5^�<�k>`�P�r6    �8���	<��>�	�r6    �M5�
ף<\�B>
ף< |   L:8�
ף�\�B>
ף< |   L�8�5^�<�k>`�P< |   *;��X94��k>`�P< |   ����X94��k>`�P<��    ~8��X94��k>`�P���    ~����	���>�	<��    M5���	���>�	���    M���
ף�\�B>
ף<     L�&?
ף<\�B>
ף<     L:&?
ף<\�B>
ף�     L:�2
ף�\�B>
ף�     L��2�	���>�	<     M�S=�	���>�	�     M�Y9�	<��>�	<     M5S=�	<��>�	�     M5Y9X94��k>`�P� � �  �.��5^�<�k>`�P� � �  *����	���>�	� � �  M5���	<��>�	� � �  M���      vertex_count    j         array_index_data    �   D B C C E D H F G G I H L J K K M L P N O O Q P T R S S U T X V W W Y X \ Z [ [ ] \     ^  ^   ^ _  _ `  a ^   
 a 
 ` a 
  ` 
   d b c c e d h f g g i h       index_count    T      
   primitive             format    }       aabb    q��    q���q��>��>r�v>      skeleton_aabb              blend_shape_data           	   material             PackedScene          	         names "         pumpkinTall    Spatial 
   tmpParent 
   transform    mesh    material/0    material/1    MeshInstance    	   variants            �?              �?              �?��L�    
ף�                      node_count             nodes        ��������       ����                      ����                      ����                                      conn_count              conns               node_paths              editable_instances              version       RSRC           [remap]

importer="scene"
type="PackedScene"
path="res://.import/pumpkinTall.glb-bde30c03a5a9f848d40365db8095159a.scn"

[deps]

source_file="res://pumpkinTall.glb"
dest_files=[ "res://.import/pumpkinTall.glb-bde30c03a5a9f848d40365db8095159a.scn" ]

[params]

nodes/root_type="Spatial"
nodes/root_name="Scene Root"
nodes/root_scale=1.0
nodes/custom_script=""
nodes/storage=0
nodes/use_legacy_names=false
materials/location=1
materials/storage=1
materials/keep_on_reimport=true
meshes/compress=true
meshes/ensure_tangents=true
meshes/storage=0
meshes/light_baking=0
meshes/lightmap_texel_size=0.1
skins/use_named_skins=true
external_files/store_in_subdir=false
animation/import=true
animation/fps=15
animation/filter_script=""
animation/storage=false
animation/keep_custom_tracks=false
animation/optimizer/enabled=true
animation/optimizer/max_linear_error=0.05
animation/optimizer/max_angular_error=0.01
animation/optimizer/max_angle=22
animation/optimizer/remove_unused_tracks=true
animation/clips/amount=0
animation/clip_1/name=""
animation/clip_1/start_frame=0
animation/clip_1/end_frame=0
animation/clip_1/loops=false
animation/clip_2/name=""
animation/clip_2/start_frame=0
animation/clip_2/end_frame=0
animation/clip_2/loops=false
animation/clip_3/name=""
animation/clip_3/start_frame=0
animation/clip_3/end_frame=0
animation/clip_3/loops=false
animation/clip_4/name=""
animation/clip_4/start_frame=0
animation/clip_4/end_frame=0
animation/clip_4/loops=false
animation/clip_5/name=""
animation/clip_5/start_frame=0
animation/clip_5/end_frame=0
animation/clip_5/loops=false
animation/clip_6/name=""
animation/clip_6/start_frame=0
animation/clip_6/end_frame=0
animation/clip_6/loops=false
animation/clip_7/name=""
animation/clip_7/start_frame=0
animation/clip_7/end_frame=0
animation/clip_7/loops=false
animation/clip_8/name=""
animation/clip_8/start_frame=0
animation/clip_8/end_frame=0
animation/clip_8/loops=false
animation/clip_9/name=""
animation/clip_9/start_frame=0
animation/clip_9/end_frame=0
animation/clip_9/loops=false
animation/clip_10/name=""
animation/clip_10/start_frame=0
animation/clip_10/end_frame=0
animation/clip_10/loops=false
animation/clip_11/name=""
animation/clip_11/start_frame=0
animation/clip_11/end_frame=0
animation/clip_11/loops=false
animation/clip_12/name=""
animation/clip_12/start_frame=0
animation/clip_12/end_frame=0
animation/clip_12/loops=false
animation/clip_13/name=""
animation/clip_13/start_frame=0
animation/clip_13/end_frame=0
animation/clip_13/loops=false
animation/clip_14/name=""
animation/clip_14/start_frame=0
animation/clip_14/end_frame=0
animation/clip_14/loops=false
animation/clip_15/name=""
animation/clip_15/start_frame=0
animation/clip_15/end_frame=0
animation/clip_15/loops=false
animation/clip_16/name=""
animation/clip_16/start_frame=0
animation/clip_16/end_frame=0
animation/clip_16/loops=false
animation/clip_17/name=""
animation/clip_17/start_frame=0
animation/clip_17/end_frame=0
animation/clip_17/loops=false
animation/clip_18/name=""
animation/clip_18/start_frame=0
animation/clip_18/end_frame=0
animation/clip_18/loops=false
animation/clip_19/name=""
animation/clip_19/start_frame=0
animation/clip_19/end_frame=0
animation/clip_19/loops=false
animation/clip_20/name=""
animation/clip_20/start_frame=0
animation/clip_20/end_frame=0
animation/clip_20/loops=false
animation/clip_21/name=""
animation/clip_21/start_frame=0
animation/clip_21/end_frame=0
animation/clip_21/loops=false
animation/clip_22/name=""
animation/clip_22/start_frame=0
animation/clip_22/end_frame=0
animation/clip_22/loops=false
animation/clip_23/name=""
animation/clip_23/start_frame=0
animation/clip_23/end_frame=0
animation/clip_23/loops=false
animation/clip_24/name=""
animation/clip_24/start_frame=0
animation/clip_24/end_frame=0
animation/clip_24/loops=false
animation/clip_25/name=""
animation/clip_25/start_frame=0
animation/clip_25/end_frame=0
animation/clip_25/loops=false
animation/clip_26/name=""
animation/clip_26/start_frame=0
animation/clip_26/end_frame=0
animation/clip_26/loops=false
animation/clip_27/name=""
animation/clip_27/start_frame=0
animation/clip_27/end_frame=0
animation/clip_27/loops=false
animation/clip_28/name=""
animation/clip_28/start_frame=0
animation/clip_28/end_frame=0
animation/clip_28/loops=false
animation/clip_29/name=""
animation/clip_29/start_frame=0
animation/clip_29/end_frame=0
animation/clip_29/loops=false
animation/clip_30/name=""
animation/clip_30/start_frame=0
animation/clip_30/end_frame=0
animation/clip_30/loops=false
animation/clip_31/name=""
animation/clip_31/start_frame=0
animation/clip_31/end_frame=0
animation/clip_31/loops=false
animation/clip_32/name=""
animation/clip_32/start_frame=0
animation/clip_32/end_frame=0
animation/clip_32/loops=false
animation/clip_33/name=""
animation/clip_33/start_frame=0
animation/clip_33/end_frame=0
animation/clip_33/loops=false
animation/clip_34/name=""
animation/clip_34/start_frame=0
animation/clip_34/end_frame=0
animation/clip_34/loops=false
animation/clip_35/name=""
animation/clip_35/start_frame=0
animation/clip_35/end_frame=0
animation/clip_35/loops=false
animation/clip_36/name=""
animation/clip_36/start_frame=0
animation/clip_36/end_frame=0
animation/clip_36/loops=false
animation/clip_37/name=""
animation/clip_37/start_frame=0
animation/clip_37/end_frame=0
animation/clip_37/loops=false
animation/clip_38/name=""
animation/clip_38/start_frame=0
animation/clip_38/end_frame=0
animation/clip_38/loops=false
animation/clip_39/name=""
animation/clip_39/start_frame=0
animation/clip_39/end_frame=0
animation/clip_39/loops=false
animation/clip_40/name=""
animation/clip_40/start_frame=0
animation/clip_40/end_frame=0
animation/clip_40/loops=false
animation/clip_41/name=""
animation/clip_41/start_frame=0
animation/clip_41/end_frame=0
animation/clip_41/loops=false
animation/clip_42/name=""
animation/clip_42/start_frame=0
animation/clip_42/end_frame=0
animation/clip_42/loops=false
animation/clip_43/name=""
animation/clip_43/start_frame=0
animation/clip_43/end_frame=0
animation/clip_43/loops=false
animation/clip_44/name=""
animation/clip_44/start_frame=0
animation/clip_44/end_frame=0
animation/clip_44/loops=false
animation/clip_45/name=""
animation/clip_45/start_frame=0
animation/clip_45/end_frame=0
animation/clip_45/loops=false
animation/clip_46/name=""
animation/clip_46/start_frame=0
animation/clip_46/end_frame=0
animation/clip_46/loops=false
animation/clip_47/name=""
animation/clip_47/start_frame=0
animation/clip_47/end_frame=0
animation/clip_47/loops=false
animation/clip_48/name=""
animation/clip_48/start_frame=0
animation/clip_48/end_frame=0
animation/clip_48/loops=false
animation/clip_49/name=""
animation/clip_49/start_frame=0
animation/clip_49/end_frame=0
animation/clip_49/loops=false
animation/clip_50/name=""
animation/clip_50/start_frame=0
animation/clip_50/end_frame=0
animation/clip_50/loops=false
animation/clip_51/name=""
animation/clip_51/start_frame=0
animation/clip_51/end_frame=0
animation/clip_51/loops=false
animation/clip_52/name=""
animation/clip_52/start_frame=0
animation/clip_52/end_frame=0
animation/clip_52/loops=false
animation/clip_53/name=""
animation/clip_53/start_frame=0
animation/clip_53/end_frame=0
animation/clip_53/loops=false
animation/clip_54/name=""
animation/clip_54/start_frame=0
animation/clip_54/end_frame=0
animation/clip_54/loops=false
animation/clip_55/name=""
animation/clip_55/start_frame=0
animation/clip_55/end_frame=0
animation/clip_55/loops=false
animation/clip_56/name=""
animation/clip_56/start_frame=0
animation/clip_56/end_frame=0
animation/clip_56/loops=false
animation/clip_57/name=""
animation/clip_57/start_frame=0
animation/clip_57/end_frame=0
animation/clip_57/loops=false
animation/clip_58/name=""
animation/clip_58/start_frame=0
animation/clip_58/end_frame=0
animation/clip_58/loops=false
animation/clip_59/name=""
animation/clip_59/start_frame=0
animation/clip_59/end_frame=0
animation/clip_59/loops=false
animation/clip_60/name=""
animation/clip_60/start_frame=0
animation/clip_60/end_frame=0
animation/clip_60/loops=false
animation/clip_61/name=""
animation/clip_61/start_frame=0
animation/clip_61/end_frame=0
animation/clip_61/loops=false
animation/clip_62/name=""
animation/clip_62/start_frame=0
animation/clip_62/end_frame=0
animation/clip_62/loops=false
animation/clip_63/name=""
animation/clip_63/start_frame=0
animation/clip_63/end_frame=0
animation/clip_63/loops=false
animation/clip_64/name=""
animation/clip_64/start_frame=0
animation/clip_64/end_frame=0
animation/clip_64/loops=false
animation/clip_65/name=""
animation/clip_65/start_frame=0
animation/clip_65/end_frame=0
animation/clip_65/loops=false
animation/clip_66/name=""
animation/clip_66/start_frame=0
animation/clip_66/end_frame=0
animation/clip_66/loops=false
animation/clip_67/name=""
animation/clip_67/start_frame=0
animation/clip_67/end_frame=0
animation/clip_67/loops=false
animation/clip_68/name=""
animation/clip_68/start_frame=0
animation/clip_68/end_frame=0
animation/clip_68/loops=false
animation/clip_69/name=""
animation/clip_69/start_frame=0
animation/clip_69/end_frame=0
animation/clip_69/loops=false
animation/clip_70/name=""
animation/clip_70/start_frame=0
animation/clip_70/end_frame=0
animation/clip_70/loops=false
animation/clip_71/name=""
animation/clip_71/start_frame=0
animation/clip_71/end_frame=0
animation/clip_71/loops=false
animation/clip_72/name=""
animation/clip_72/start_frame=0
animation/clip_72/end_frame=0
animation/clip_72/loops=false
animation/clip_73/name=""
animation/clip_73/start_frame=0
animation/clip_73/end_frame=0
animation/clip_73/loops=false
animation/clip_74/name=""
animation/clip_74/start_frame=0
animation/clip_74/end_frame=0
animation/clip_74/loops=false
animation/clip_75/name=""
animation/clip_75/start_frame=0
animation/clip_75/end_frame=0
animation/clip_75/loops=false
animation/clip_76/name=""
animation/clip_76/start_frame=0
animation/clip_76/end_frame=0
animation/clip_76/loops=false
animation/clip_77/name=""
animation/clip_77/start_frame=0
animation/clip_77/end_frame=0
animation/clip_77/loops=false
animation/clip_78/name=""
animation/clip_78/start_frame=0
animation/clip_78/end_frame=0
animation/clip_78/loops=false
animation/clip_79/name=""
animation/clip_79/start_frame=0
animation/clip_79/end_frame=0
animation/clip_79/loops=false
animation/clip_80/name=""
animation/clip_80/start_frame=0
animation/clip_80/end_frame=0
animation/clip_80/loops=false
animation/clip_81/name=""
animation/clip_81/start_frame=0
animation/clip_81/end_frame=0
animation/clip_81/loops=false
animation/clip_82/name=""
animation/clip_82/start_frame=0
animation/clip_82/end_frame=0
animation/clip_82/loops=false
animation/clip_83/name=""
animation/clip_83/start_frame=0
animation/clip_83/end_frame=0
animation/clip_83/loops=false
animation/clip_84/name=""
animation/clip_84/start_frame=0
animation/clip_84/end_frame=0
animation/clip_84/loops=false
animation/clip_85/name=""
animation/clip_85/start_frame=0
animation/clip_85/end_frame=0
animation/clip_85/loops=false
animation/clip_86/name=""
animation/clip_86/start_frame=0
animation/clip_86/end_frame=0
animation/clip_86/loops=false
animation/clip_87/name=""
animation/clip_87/start_frame=0
animation/clip_87/end_frame=0
animation/clip_87/loops=false
animation/clip_88/name=""
animation/clip_88/start_frame=0
animation/clip_88/end_frame=0
animation/clip_88/loops=false
animation/clip_89/name=""
animation/clip_89/start_frame=0
animation/clip_89/end_frame=0
animation/clip_89/loops=false
animation/clip_90/name=""
animation/clip_90/start_frame=0
animation/clip_90/end_frame=0
animation/clip_90/loops=false
animation/clip_91/name=""
animation/clip_91/start_frame=0
animation/clip_91/end_frame=0
animation/clip_91/loops=false
animation/clip_92/name=""
animation/clip_92/start_frame=0
animation/clip_92/end_frame=0
animation/clip_92/loops=false
animation/clip_93/name=""
animation/clip_93/start_frame=0
animation/clip_93/end_frame=0
animation/clip_93/loops=false
animation/clip_94/name=""
animation/clip_94/start_frame=0
animation/clip_94/end_frame=0
animation/clip_94/loops=false
animation/clip_95/name=""
animation/clip_95/start_frame=0
animation/clip_95/end_frame=0
animation/clip_95/loops=false
animation/clip_96/name=""
animation/clip_96/start_frame=0
animation/clip_96/end_frame=0
animation/clip_96/loops=false
animation/clip_97/name=""
animation/clip_97/start_frame=0
animation/clip_97/end_frame=0
animation/clip_97/loops=false
animation/clip_98/name=""
animation/clip_98/start_frame=0
animation/clip_98/end_frame=0
animation/clip_98/loops=false
animation/clip_99/name=""
animation/clip_99/start_frame=0
animation/clip_99/end_frame=0
animation/clip_99/loops=false
animation/clip_100/name=""
animation/clip_100/start_frame=0
animation/clip_100/end_frame=0
animation/clip_100/loops=false
animation/clip_101/name=""
animation/clip_101/start_frame=0
animation/clip_101/end_frame=0
animation/clip_101/loops=false
animation/clip_102/name=""
animation/clip_102/start_frame=0
animation/clip_102/end_frame=0
animation/clip_102/loops=false
animation/clip_103/name=""
animation/clip_103/start_frame=0
animation/clip_103/end_frame=0
animation/clip_103/loops=false
animation/clip_104/name=""
animation/clip_104/start_frame=0
animation/clip_104/end_frame=0
animation/clip_104/loops=false
animation/clip_105/name=""
animation/clip_105/start_frame=0
animation/clip_105/end_frame=0
animation/clip_105/loops=false
animation/clip_106/name=""
animation/clip_106/start_frame=0
animation/clip_106/end_frame=0
animation/clip_106/loops=false
animation/clip_107/name=""
animation/clip_107/start_frame=0
animation/clip_107/end_frame=0
animation/clip_107/loops=false
animation/clip_108/name=""
animation/clip_108/start_frame=0
animation/clip_108/end_frame=0
animation/clip_108/loops=false
animation/clip_109/name=""
animation/clip_109/start_frame=0
animation/clip_109/end_frame=0
animation/clip_109/loops=false
animation/clip_110/name=""
animation/clip_110/start_frame=0
animation/clip_110/end_frame=0
animation/clip_110/loops=false
animation/clip_111/name=""
animation/clip_111/start_frame=0
animation/clip_111/end_frame=0
animation/clip_111/loops=false
animation/clip_112/name=""
animation/clip_112/start_frame=0
animation/clip_112/end_frame=0
animation/clip_112/loops=false
animation/clip_113/name=""
animation/clip_113/start_frame=0
animation/clip_113/end_frame=0
animation/clip_113/loops=false
animation/clip_114/name=""
animation/clip_114/start_frame=0
animation/clip_114/end_frame=0
animation/clip_114/loops=false
animation/clip_115/name=""
animation/clip_115/start_frame=0
animation/clip_115/end_frame=0
animation/clip_115/loops=false
animation/clip_116/name=""
animation/clip_116/start_frame=0
animation/clip_116/end_frame=0
animation/clip_116/loops=false
animation/clip_117/name=""
animation/clip_117/start_frame=0
animation/clip_117/end_frame=0
animation/clip_117/loops=false
animation/clip_118/name=""
animation/clip_118/start_frame=0
animation/clip_118/end_frame=0
animation/clip_118/loops=false
animation/clip_119/name=""
animation/clip_119/start_frame=0
animation/clip_119/end_frame=0
animation/clip_119/loops=false
animation/clip_120/name=""
animation/clip_120/start_frame=0
animation/clip_120/end_frame=0
animation/clip_120/loops=false
animation/clip_121/name=""
animation/clip_121/start_frame=0
animation/clip_121/end_frame=0
animation/clip_121/loops=false
animation/clip_122/name=""
animation/clip_122/start_frame=0
animation/clip_122/end_frame=0
animation/clip_122/loops=false
animation/clip_123/name=""
animation/clip_123/start_frame=0
animation/clip_123/end_frame=0
animation/clip_123/loops=false
animation/clip_124/name=""
animation/clip_124/start_frame=0
animation/clip_124/end_frame=0
animation/clip_124/loops=false
animation/clip_125/name=""
animation/clip_125/start_frame=0
animation/clip_125/end_frame=0
animation/clip_125/loops=false
animation/clip_126/name=""
animation/clip_126/start_frame=0
animation/clip_126/end_frame=0
animation/clip_126/loops=false
animation/clip_127/name=""
animation/clip_127/start_frame=0
animation/clip_127/end_frame=0
animation/clip_127/loops=false
animation/clip_128/name=""
animation/clip_128/start_frame=0
animation/clip_128/end_frame=0
animation/clip_128/loops=false
animation/clip_129/name=""
animation/clip_129/start_frame=0
animation/clip_129/end_frame=0
animation/clip_129/loops=false
animation/clip_130/name=""
animation/clip_130/start_frame=0
animation/clip_130/end_frame=0
animation/clip_130/loops=false
animation/clip_131/name=""
animation/clip_131/start_frame=0
animation/clip_131/end_frame=0
animation/clip_131/loops=false
animation/clip_132/name=""
animation/clip_132/start_frame=0
animation/clip_132/end_frame=0
animation/clip_132/loops=false
animation/clip_133/name=""
animation/clip_133/start_frame=0
animation/clip_133/end_frame=0
animation/clip_133/loops=false
animation/clip_134/name=""
animation/clip_134/start_frame=0
animation/clip_134/end_frame=0
animation/clip_134/loops=false
animation/clip_135/name=""
animation/clip_135/start_frame=0
animation/clip_135/end_frame=0
animation/clip_135/loops=false
animation/clip_136/name=""
animation/clip_136/start_frame=0
animation/clip_136/end_frame=0
animation/clip_136/loops=false
animation/clip_137/name=""
animation/clip_137/start_frame=0
animation/clip_137/end_frame=0
animation/clip_137/loops=false
animation/clip_138/name=""
animation/clip_138/start_frame=0
animation/clip_138/end_frame=0
animation/clip_138/loops=false
animation/clip_139/name=""
animation/clip_139/start_frame=0
animation/clip_139/end_frame=0
animation/clip_139/loops=false
animation/clip_140/name=""
animation/clip_140/start_frame=0
animation/clip_140/end_frame=0
animation/clip_140/loops=false
animation/clip_141/name=""
animation/clip_141/start_frame=0
animation/clip_141/end_frame=0
animation/clip_141/loops=false
animation/clip_142/name=""
animation/clip_142/start_frame=0
animation/clip_142/end_frame=0
animation/clip_142/loops=false
animation/clip_143/name=""
animation/clip_143/start_frame=0
animation/clip_143/end_frame=0
animation/clip_143/loops=false
animation/clip_144/name=""
animation/clip_144/start_frame=0
animation/clip_144/end_frame=0
animation/clip_144/loops=false
animation/clip_145/name=""
animation/clip_145/start_frame=0
animation/clip_145/end_frame=0
animation/clip_145/loops=false
animation/clip_146/name=""
animation/clip_146/start_frame=0
animation/clip_146/end_frame=0
animation/clip_146/loops=false
animation/clip_147/name=""
animation/clip_147/start_frame=0
animation/clip_147/end_frame=0
animation/clip_147/loops=false
animation/clip_148/name=""
animation/clip_148/start_frame=0
animation/clip_148/end_frame=0
animation/clip_148/loops=false
animation/clip_149/name=""
animation/clip_149/start_frame=0
animation/clip_149/end_frame=0
animation/clip_149/loops=false
animation/clip_150/name=""
animation/clip_150/start_frame=0
animation/clip_150/end_frame=0
animation/clip_150/loops=false
animation/clip_151/name=""
animation/clip_151/start_frame=0
animation/clip_151/end_frame=0
animation/clip_151/loops=false
animation/clip_152/name=""
animation/clip_152/start_frame=0
animation/clip_152/end_frame=0
animation/clip_152/loops=false
animation/clip_153/name=""
animation/clip_153/start_frame=0
animation/clip_153/end_frame=0
animation/clip_153/loops=false
animation/clip_154/name=""
animation/clip_154/start_frame=0
animation/clip_154/end_frame=0
animation/clip_154/loops=false
animation/clip_155/name=""
animation/clip_155/start_frame=0
animation/clip_155/end_frame=0
animation/clip_155/loops=false
animation/clip_156/name=""
animation/clip_156/start_frame=0
animation/clip_156/end_frame=0
animation/clip_156/loops=false
animation/clip_157/name=""
animation/clip_157/start_frame=0
animation/clip_157/end_frame=0
animation/clip_157/loops=false
animation/clip_158/name=""
animation/clip_158/start_frame=0
animation/clip_158/end_frame=0
animation/clip_158/loops=false
animation/clip_159/name=""
animation/clip_159/start_frame=0
animation/clip_159/end_frame=0
animation/clip_159/loops=false
animation/clip_160/name=""
animation/clip_160/start_frame=0
animation/clip_160/end_frame=0
animation/clip_160/loops=false
animation/clip_161/name=""
animation/clip_161/start_frame=0
animation/clip_161/end_frame=0
animation/clip_161/loops=false
animation/clip_162/name=""
animation/clip_162/start_frame=0
animation/clip_162/end_frame=0
animation/clip_162/loops=false
animation/clip_163/name=""
animation/clip_163/start_frame=0
animation/clip_163/end_frame=0
animation/clip_163/loops=false
animation/clip_164/name=""
animation/clip_164/start_frame=0
animation/clip_164/end_frame=0
animation/clip_164/loops=false
animation/clip_165/name=""
animation/clip_165/start_frame=0
animation/clip_165/end_frame=0
animation/clip_165/loops=false
animation/clip_166/name=""
animation/clip_166/start_frame=0
animation/clip_166/end_frame=0
animation/clip_166/loops=false
animation/clip_167/name=""
animation/clip_167/start_frame=0
animation/clip_167/end_frame=0
animation/clip_167/loops=false
animation/clip_168/name=""
animation/clip_168/start_frame=0
animation/clip_168/end_frame=0
animation/clip_168/loops=false
animation/clip_169/name=""
animation/clip_169/start_frame=0
animation/clip_169/end_frame=0
animation/clip_169/loops=false
animation/clip_170/name=""
animation/clip_170/start_frame=0
animation/clip_170/end_frame=0
animation/clip_170/loops=false
animation/clip_171/name=""
animation/clip_171/start_frame=0
animation/clip_171/end_frame=0
animation/clip_171/loops=false
animation/clip_172/name=""
animation/clip_172/start_frame=0
animation/clip_172/end_frame=0
animation/clip_172/loops=false
animation/clip_173/name=""
animation/clip_173/start_frame=0
animation/clip_173/end_frame=0
animation/clip_173/loops=false
animation/clip_174/name=""
animation/clip_174/start_frame=0
animation/clip_174/end_frame=0
animation/clip_174/loops=false
animation/clip_175/name=""
animation/clip_175/start_frame=0
animation/clip_175/end_frame=0
animation/clip_175/loops=false
animation/clip_176/name=""
animation/clip_176/start_frame=0
animation/clip_176/end_frame=0
animation/clip_176/loops=false
animation/clip_177/name=""
animation/clip_177/start_frame=0
animation/clip_177/end_frame=0
animation/clip_177/loops=false
animation/clip_178/name=""
animation/clip_178/start_frame=0
animation/clip_178/end_frame=0
animation/clip_178/loops=false
animation/clip_179/name=""
animation/clip_179/start_frame=0
animation/clip_179/end_frame=0
animation/clip_179/loops=false
animation/clip_180/name=""
animation/clip_180/start_frame=0
animation/clip_180/end_frame=0
animation/clip_180/loops=false
animation/clip_181/name=""
animation/clip_181/start_frame=0
animation/clip_181/end_frame=0
animation/clip_181/loops=false
animation/clip_182/name=""
animation/clip_182/start_frame=0
animation/clip_182/end_frame=0
animation/clip_182/loops=false
animation/clip_183/name=""
animation/clip_183/start_frame=0
animation/clip_183/end_frame=0
animation/clip_183/loops=false
animation/clip_184/name=""
animation/clip_184/start_frame=0
animation/clip_184/end_frame=0
animation/clip_184/loops=false
animation/clip_185/name=""
animation/clip_185/start_frame=0
animation/clip_185/end_frame=0
animation/clip_185/loops=false
animation/clip_186/name=""
animation/clip_186/start_frame=0
animation/clip_186/end_frame=0
animation/clip_186/loops=false
animation/clip_187/name=""
animation/clip_187/start_frame=0
animation/clip_187/end_frame=0
animation/clip_187/loops=false
animation/clip_188/name=""
animation/clip_188/start_frame=0
animation/clip_188/end_frame=0
animation/clip_188/loops=false
animation/clip_189/name=""
animation/clip_189/start_frame=0
animation/clip_189/end_frame=0
animation/clip_189/loops=false
animation/clip_190/name=""
animation/clip_190/start_frame=0
animation/clip_190/end_frame=0
animation/clip_190/loops=false
animation/clip_191/name=""
animation/clip_191/start_frame=0
animation/clip_191/end_frame=0
animation/clip_191/loops=false
animation/clip_192/name=""
animation/clip_192/start_frame=0
animation/clip_192/end_frame=0
animation/clip_192/loops=false
animation/clip_193/name=""
animation/clip_193/start_frame=0
animation/clip_193/end_frame=0
animation/clip_193/loops=false
animation/clip_194/name=""
animation/clip_194/start_frame=0
animation/clip_194/end_frame=0
animation/clip_194/loops=false
animation/clip_195/name=""
animation/clip_195/start_frame=0
animation/clip_195/end_frame=0
animation/clip_195/loops=false
animation/clip_196/name=""
animation/clip_196/start_frame=0
animation/clip_196/end_frame=0
animation/clip_196/loops=false
animation/clip_197/name=""
animation/clip_197/start_frame=0
animation/clip_197/end_frame=0
animation/clip_197/loops=false
animation/clip_198/name=""
animation/clip_198/start_frame=0
animation/clip_198/end_frame=0
animation/clip_198/loops=false
animation/clip_199/name=""
animation/clip_199/start_frame=0
animation/clip_199/end_frame=0
animation/clip_199/loops=false
animation/clip_200/name=""
animation/clip_200/start_frame=0
animation/clip_200/end_frame=0
animation/clip_200/loops=false
animation/clip_201/name=""
animation/clip_201/start_frame=0
animation/clip_201/end_frame=0
animation/clip_201/loops=false
animation/clip_202/name=""
animation/clip_202/start_frame=0
animation/clip_202/end_frame=0
animation/clip_202/loops=false
animation/clip_203/name=""
animation/clip_203/start_frame=0
animation/clip_203/end_frame=0
animation/clip_203/loops=false
animation/clip_204/name=""
animation/clip_204/start_frame=0
animation/clip_204/end_frame=0
animation/clip_204/loops=false
animation/clip_205/name=""
animation/clip_205/start_frame=0
animation/clip_205/end_frame=0
animation/clip_205/loops=false
animation/clip_206/name=""
animation/clip_206/start_frame=0
animation/clip_206/end_frame=0
animation/clip_206/loops=false
animation/clip_207/name=""
animation/clip_207/start_frame=0
animation/clip_207/end_frame=0
animation/clip_207/loops=false
animation/clip_208/name=""
animation/clip_208/start_frame=0
animation/clip_208/end_frame=0
animation/clip_208/loops=false
animation/clip_209/name=""
animation/clip_209/start_frame=0
animation/clip_209/end_frame=0
animation/clip_209/loops=false
animation/clip_210/name=""
animation/clip_210/start_frame=0
animation/clip_210/end_frame=0
animation/clip_210/loops=false
animation/clip_211/name=""
animation/clip_211/start_frame=0
animation/clip_211/end_frame=0
animation/clip_211/loops=false
animation/clip_212/name=""
animation/clip_212/start_frame=0
animation/clip_212/end_frame=0
animation/clip_212/loops=false
animation/clip_213/name=""
animation/clip_213/start_frame=0
animation/clip_213/end_frame=0
animation/clip_213/loops=false
animation/clip_214/name=""
animation/clip_214/start_frame=0
animation/clip_214/end_frame=0
animation/clip_214/loops=false
animation/clip_215/name=""
animation/clip_215/start_frame=0
animation/clip_215/end_frame=0
animation/clip_215/loops=false
animation/clip_216/name=""
animation/clip_216/start_frame=0
animation/clip_216/end_frame=0
animation/clip_216/loops=false
animation/clip_217/name=""
animation/clip_217/start_frame=0
animation/clip_217/end_frame=0
animation/clip_217/loops=false
animation/clip_218/name=""
animation/clip_218/start_frame=0
animation/clip_218/end_frame=0
animation/clip_218/loops=false
animation/clip_219/name=""
animation/clip_219/start_frame=0
animation/clip_219/end_frame=0
animation/clip_219/loops=false
animation/clip_220/name=""
animation/clip_220/start_frame=0
animation/clip_220/end_frame=0
animation/clip_220/loops=false
animation/clip_221/name=""
animation/clip_221/start_frame=0
animation/clip_221/end_frame=0
animation/clip_221/loops=false
animation/clip_222/name=""
animation/clip_222/start_frame=0
animation/clip_222/end_frame=0
animation/clip_222/loops=false
animation/clip_223/name=""
animation/clip_223/start_frame=0
animation/clip_223/end_frame=0
animation/clip_223/loops=false
animation/clip_224/name=""
animation/clip_224/start_frame=0
animation/clip_224/end_frame=0
animation/clip_224/loops=false
animation/clip_225/name=""
animation/clip_225/start_frame=0
animation/clip_225/end_frame=0
animation/clip_225/loops=false
animation/clip_226/name=""
animation/clip_226/start_frame=0
animation/clip_226/end_frame=0
animation/clip_226/loops=false
animation/clip_227/name=""
animation/clip_227/start_frame=0
animation/clip_227/end_frame=0
animation/clip_227/loops=false
animation/clip_228/name=""
animation/clip_228/start_frame=0
animation/clip_228/end_frame=0
animation/clip_228/loops=false
animation/clip_229/name=""
animation/clip_229/start_frame=0
animation/clip_229/end_frame=0
animation/clip_229/loops=false
animation/clip_230/name=""
animation/clip_230/start_frame=0
animation/clip_230/end_frame=0
animation/clip_230/loops=false
animation/clip_231/name=""
animation/clip_231/start_frame=0
animation/clip_231/end_frame=0
animation/clip_231/loops=false
animation/clip_232/name=""
animation/clip_232/start_frame=0
animation/clip_232/end_frame=0
animation/clip_232/loops=false
animation/clip_233/name=""
animation/clip_233/start_frame=0
animation/clip_233/end_frame=0
animation/clip_233/loops=false
animation/clip_234/name=""
animation/clip_234/start_frame=0
animation/clip_234/end_frame=0
animation/clip_234/loops=false
animation/clip_235/name=""
animation/clip_235/start_frame=0
animation/clip_235/end_frame=0
animation/clip_235/loops=false
animation/clip_236/name=""
animation/clip_236/start_frame=0
animation/clip_236/end_frame=0
animation/clip_236/loops=false
animation/clip_237/name=""
animation/clip_237/start_frame=0
animation/clip_237/end_frame=0
animation/clip_237/loops=false
animation/clip_238/name=""
animation/clip_238/start_frame=0
animation/clip_238/end_frame=0
animation/clip_238/loops=false
animation/clip_239/name=""
animation/clip_239/start_frame=0
animation/clip_239/end_frame=0
animation/clip_239/loops=false
animation/clip_240/name=""
animation/clip_240/start_frame=0
animation/clip_240/end_frame=0
animation/clip_240/loops=false
animation/clip_241/name=""
animation/clip_241/start_frame=0
animation/clip_241/end_frame=0
animation/clip_241/loops=false
animation/clip_242/name=""
animation/clip_242/start_frame=0
animation/clip_242/end_frame=0
animation/clip_242/loops=false
animation/clip_243/name=""
animation/clip_243/start_frame=0
animation/clip_243/end_frame=0
animation/clip_243/loops=false
animation/clip_244/name=""
animation/clip_244/start_frame=0
animation/clip_244/end_frame=0
animation/clip_244/loops=false
animation/clip_245/name=""
animation/clip_245/start_frame=0
animation/clip_245/end_frame=0
animation/clip_245/loops=false
animation/clip_246/name=""
animation/clip_246/start_frame=0
animation/clip_246/end_frame=0
animation/clip_246/loops=false
animation/clip_247/name=""
animation/clip_247/start_frame=0
animation/clip_247/end_frame=0
animation/clip_247/loops=false
animation/clip_248/name=""
animation/clip_248/start_frame=0
animation/clip_248/end_frame=0
animation/clip_248/loops=false
animation/clip_249/name=""
animation/clip_249/start_frame=0
animation/clip_249/end_frame=0
animation/clip_249/loops=false
animation/clip_250/name=""
animation/clip_250/start_frame=0
animation/clip_250/end_frame=0
animation/clip_250/loops=false
animation/clip_251/name=""
animation/clip_251/start_frame=0
animation/clip_251/end_frame=0
animation/clip_251/loops=false
animation/clip_252/name=""
animation/clip_252/start_frame=0
animation/clip_252/end_frame=0
animation/clip_252/loops=false
animation/clip_253/name=""
animation/clip_253/start_frame=0
animation/clip_253/end_frame=0
animation/clip_253/loops=false
animation/clip_254/name=""
animation/clip_254/start_frame=0
animation/clip_254/end_frame=0
animation/clip_254/loops=false
animation/clip_255/name=""
animation/clip_255/start_frame=0
animation/clip_255/end_frame=0
animation/clip_255/loops=false
animation/clip_256/name=""
animation/clip_256/start_frame=0
animation/clip_256/end_frame=0
animation/clip_256/loops=false
  RSRC                 
   ArrayMesh                                                                 A      resource_local_to_scene    resource_name    render_priority 
   next_pass    flags_transparent    flags_use_shadow_to_opacity    flags_unshaded    flags_vertex_lighting    flags_no_depth_test    flags_use_point_size    flags_world_triplanar    flags_fixed_size    flags_albedo_tex_force_srgb    flags_do_not_receive_shadows    flags_disable_ambient_light    flags_ensure_correct_normals    vertex_color_use_as_albedo    vertex_color_is_srgb    params_diffuse_mode    params_specular_mode    params_blend_mode    params_cull_mode    params_depth_draw_mode    params_line_width    params_point_size    params_billboard_mode    params_billboard_keep_scale    params_grow    params_use_alpha_scissor    albedo_color    albedo_texture 	   metallic    metallic_specular    metallic_texture    metallic_texture_channel 
   roughness    roughness_texture    roughness_texture_channel    emission_enabled    normal_enabled    rim_enabled    clearcoat_enabled    anisotropy_enabled    ao_enabled    depth_enabled    subsurf_scatter_enabled    transmission_enabled    refraction_enabled    detail_enabled 
   uv1_scale    uv1_offset    uv1_triplanar    uv1_triplanar_sharpness 
   uv2_scale    uv2_offset    uv2_triplanar    uv2_triplanar_sharpness    proximity_fade_enable    distance_fade_mode    script    lightmap_size_hint    blend_shape_mode    custom_aabb    surfaces/0    surfaces/1        
   local://1 W      
   local://2 �      
   local://3 �         SpatialMaterial             pumpkin       ��z?���>��L>  �?   SpatialMaterial             metal       ��\>��D?��'?  �?
   ArrayMesh    ?               array_data    0  z�X=\�B>���=   �  *�6�z�X=\�B>����   �  *��Dz��=\�B>       �  *� <4ZG=\�B>       �  �� <2Z�<\�B>n�,�   �  ��QAz�X�\�B>����   �  *@�D2ZǼ\�B>n�,�   �  �;QA2ZG�\�B>       �  �? <2Z�<\�B>n�,=   �  ��F�z�X�\�B>���=   �  *@6�2ZǼ\�B>n�,=   �  �;F�z�ؽ\�B>       �  *D <r��)\�=    ��� � mzA����u�    ��Խ��� � m���*q���)\�=q������ � mz�������        ��� � m�@�*r��)\�=    ��= ? mz�����u�    ���=��= ? m�@�*����        ��= ? m���*q���)\�=q��=��= ? mzA��r�>)\�=    j� � �z���z�X=\�B>����j� � �*@m�r��=)\�=q���j� � �zA��z��=\�B>    j� � �*�m�q���)\�=q��= {   z���z�X=\�B>���= {   *@m�r��=)\�=q��= {   zA��z�X�\�B>���= {   *�mŏ��=        k�= ? ��@�*r��=)\�=q��=k�= ? �z���r�>)\�=    k�= ? �zA����u=    ���=k�= ? ����*��u�    ���= �{   ���*r��=)\�=q��= �{ ~  zA����u=    ���= �{   �@�*q���)\�=q��= �{ ~  z�����u=    ��Խ �    �@E��u=    ���= �    �@.��=         �    �D <��u�    ���= �    ��.�u�    ��Խ �    ��E����         �    �� <z�X�\�B>������ � m*�m�r��)\�=    �� � mzA��q���)\�=q����� � mz���z�ؽ\�B>    �� � m*@m�r��=)\�=q��� � �  z���z�X�\�B>���� � �  *@m�q���)\�=q��� � �  zA��z�X=\�B>���� � �  *�mŏ�u=    ��Խ � �  ���*q���)\�=q��� � �  zA����u�    ��Խ � �  �@�*r��=)\�=q��� � �  z���r�>)\�=    j= ? �zA��z�X=\�B>���=j= ? �*�m�z��=\�B>    j= ? �*@m�r��=)\�=q��=j= ? �z���z�ؽ\�B>    �= ? m*�m�q���)\�=q��=�= ? mzA��r��)\�=    �= ? mz���z�X�\�B>���=�= ? m*@mŏ�u=    ��Խk�� � ��@�*r�>)\�=    k�� � �z���r��=)\�=q���k�� � �zA�����=        k�� � ����*      vertex_count    B         array_index_data    �                              	  	   	 
 
 	   	                                  ! " !   # $ % & % $ ' ' $ ( ' ( ) * + , + * - . / 0 / . 1 2 3 4 3 2 5 6 7 8 7 6 9 : ; < ; : = > ? @ ? > A       index_count    x      
   primitive             format    }       aabb    r��    q���r��>��B>q�v>      skeleton_aabb              blend_shape_data           	   material                name       pumpkin @               array_data    P  
ף�\�B>
ף< |   L�8�O94;�k>`�P< |   �.��
ף<\�B>
ף< |   L:8�5^���k>`�P< |   *���
ף<\�B>
ף<t2    �L���O94;�k>`�P�t2    �8E�
ף<\�B>
ף�t2    �L:��O94;�k>`�P<t2    ��E�5^���k>`�P���    ~��
ף�\�B>
ף<��    ~L:��
ף�\�B>
ף���    ~L���5^���k>`�P<��    ~8�O94;�k>`�P� � �  �����	���>�	� � �  M5��5^���k>`�P� � �  *;���	<��>�	� � �  M����	���>�	��6    M��5^���k>`�P<�6    8��5^���k>`�P��6    ����	���>�	<�6    M5�
ף<\�B>
ף� � �  L�8�5^���k>`�P� � �  *;��
ף�\�B>
ף� � �  L:8�O94;�k>`�P� � �  ����O94;�k>`�P<|�    �����	<��>�	�|�    �M5��O94;�k>`�P�|�    �8���	<��>�	<|�    �M���2Z�<\�B>n�,=   �  ��F�2Z�<\�B>n�,�   �  ��QA4ZG=\�B>       �  �� <
ף<\�B>
ף�   �  L�&?2ZǼ\�B>n�,�   �  �;QA
ף�\�B>
ף�   �  L:&?
ף�\�B>
ף<   �  L:�2
ף<\�B>
ף<   �  L��22ZǼ\�B>n�,=   �  �;F�2ZG�\�B>       �  �? <�	<��>�	<   �  M�Y9�	���>�	�   �  M5S=�	<��>�	�   �  M�S=�	���>�	<   �  M5Y95^���k>`�P< }   *����	<��>�	< }   M5��O94;�k>`�P< }   �.���	���>�	< }   M���      vertex_count    .         array_index_data    �                  	 
 	                                        !   ! "  #  #  $ # $ " " $     $ % & ' ( ' & ) * + , + * -       index_count    T      
   primitive             format    }       aabb    2ZG�\�B>n�,�2Z�=(\�=n��=      skeleton_aabb              blend_shape_data           	   material                name       metal RSRC               [remap]

importer="wavefront_obj"
type="Mesh"
path="res://.import/pumpkinTall.obj-0093539b36bb193bafd8b058c6cd41cc.mesh"

[deps]

files=[ "res://.import/pumpkinTall.obj-0093539b36bb193bafd8b058c6cd41cc.mesh" ]

source_file="res://pumpkinTall.obj"
dest_files=[ "res://.import/pumpkinTall.obj-0093539b36bb193bafd8b058c6cd41cc.mesh", "res://.import/pumpkinTall.obj-0093539b36bb193bafd8b058c6cd41cc.mesh" ]

[params]

generate_tangents=true
scale_mesh=Vector3( 1, 1, 1 )
offset_mesh=Vector3( 0, 0, 0 )
optimize_mesh=true
           RSRC                    PackedScene                                                                 
      resource_local_to_scene    resource_name    lightmap_size_hint    blend_shape_mode    custom_aabb    surfaces/0    surfaces/1    surfaces/2    script 	   _bundled    	   Material    res://pumpkin.material 	   Material    res://metal.material 	   Material    res://light.material    
   local://1 �      
   local://2 �A      
   ArrayMesh             pumpkinTallCarved       
         array_data    �  �E�<u�=zƽ ~
   �<&³�=�q�=�d� ~
   >��R�)=u�=zƽ ~
   �>&���S=�q�=�d� ~
   @�Ð��=       �k�� � ����*q�>)\�=   �k�� � �z�����u=    ��Խk�� � ��@�*q��=)\�=q���k�� � �zA��q��=)\�=q��=k�= ? �z���q�>)\�=   �k�= ? �zA����u=    ���=k�= ? ����*���=       �k�= ? ��@�*q��)\�=   ���� � mzA������       ���� � m�@�*q���)\�=q������ � mz�����u�    ��Խ��� � m���*q��=)\�=q��=j= ? �z���z�X=\�B>���=j= ? �*�m�q�>)\�=   �j= ? �zA��z��=\�B>   �j= ? �*@m�����{�=�f��p�� � ��Cr�v�B��'�=w��p�� � ��D�R�)�u�=zƽp�� � �!D����S��q�=�d�p�� � �E����u�    ��Խ � �  �@�*��u=    ��Խ � �  ���*q���)\�=q��� � �  zA��q��=)\�=q��� � �  z���D�)<u�=zƽ�[� � ~��ܽ��S<�q�=�dｨ[� � ~��@�^��<���=%���[� � ~|�����<�1�=n/齨[� � ~�č���u=    ���= �{   �@�*��u�    ���= �{   ���*q��=)\�=q��= �{ ~  zA��q���)\�=q��= �{ ~  z����k�$G>�줽��� � {��.�Xś��>�%����� � {8�L�T��
�#>�rʽ��� � {Ó�T�i��>Cٽ��� � {��M�����9(�=]����Q( 4 s^���Y���u�=zƽ�Q( 4 s��U���¼�?�=��轨Q( 4 sv�<�����q�=�dｨQ( 4 s�į�q���)\�=q��=��= ? mzA����u�    ���=��= ? m�@�*q��)\�=   ���= ? mz�������       ���= ? m���*q��=)\�=q��= {   zA��q���)\�=q��= {   z���z�X=\�B>���= {   *@m�z�X�\�B>���= {   *�m��k�$G>�줽o�� � ��B/�T��
�#>�rʽo�� � �D��o$��>�%��o�� � �FC�¬�7��>Cٽo�� � �wD��/��<$G>�줽q�� � ��A0�/��<
�#>�rʽq�� � �	C���R�<�>�%��q�� � �4BL�/�z<�>Cٽq�� � ��CL�/�z<�>Cٽ ~  ~  �8_�c'<=�>Cٽ ~    ;?_��R�<�>�%�� ~  ~  Q:��̵(=�>�%�� ~  ~  |>��q�>)\�=   �j� � �z���z��=\�B>   �j� � �*�m�q��=)\�=q���j� � �zA��z�X=\�B>����j� � �*@m�/��<$G>�줽��� � {��<�̵(=�>�%����� � {Jñ�/��<
�#>�rʽ��� � {ģ�c'<=�>Cٽ��� � {zĲ/!��q�=�d� ~
   2�����S<�q�=�d� ~
   8��^� �u�=zƽ ~
 ~  ��&�D�)<u�=zƽ ~
   �6&���S��q�=�d� ~
   ��Ñ���q�=�d� ~
 ~  ��R�)�u�=zƽ ~
   ��&�Y���u�=zƽ ~
   ¼&�z�ؽ\�B>   ��� � m*@m�q��)\�=   ��� � mzA��z�X�\�B>������ � m*�m�q���)\�=q����� � mz�������q�=�d� � �  �=���/!��q�=�d� � �  26����¼�?�=��� � �  ;���S=�q�=�d� � �  �����S��q�=�d� � �  @��q��=)\�=q��� � �  z���q���)\�=q��� � �  zA��z�X�\�B>���� � �  *@m�v�B��'�=w�� � �  ?����7��>Cٽ � �  ?��v�B=�'�=w�� � �  ���T��
�#>�rʽ � �  ~<6�/��<
�#>�rʽ � �  Ҽ6�z�X=\�B>���� � �  *�m���S<�q�=�d� � �  �����=�q�=�d� � �  ������<�1�=n/� � �  �þc'<=�>Cٽ � �  ;���T�i��>Cٽ � �  ~8��/�z<�>Cٽ � �  Ҹ����¼�?�=���X[  � �{D���/!��q�=�d�X[  � ��DS�����9(�=]���X[  � �lC2�^� �u�=zƽX[  � ��Cｐ���       � �  �  �D <��u�    ���= �  �  �@E��u�    ��Խ �  �  �@.�u=    ��Խ �  �  ��.�u=    ���= �  �  ��E���=       � �  �  �� <z�ؽ\�B>   �     *� <z�X�\�B>����     *�6�z�X�\�B>���=     *��D2ZG�\�B>   �     �� <2ZǼ\�B>n�,=     ��QAz�X=\�B>���=     *@�D2Z�<\�B>n�,=     �;QA2ZG=\�B>   �     �? <2ZǼ\�B>n�,�     ��F�z�X=\�B>����     *@6�2Z�<\�B>n�,�     �;F�z��=\�B>   �     *D <^��<���=%��XQ) 5 �lC�����<�1�=n/�XQ) 5 �~D%��E�<u�=zƽXQ) 5 ��C\���=�q�=�d�XQ) 5 ��D��q���)\�=q��=�= ? mzA��q��)\�=   ��= ? mz���z�X�\�B>���=�= ? m*@m�z�ؽ\�B>   ��= ? m*�mŬ�7��>Cٽ ~  ~  �_�T�i��>Cٽ ~    ~�_�o$��>�%�� ~    R���Xś��>�%�� ~  ~  ����v�B��'�=w�� �� �  ?������{�=�f�� �� �  �=��v�B=�'�=w�� �� �  �����=�{�=�f�� �� �  ������=�{�=�f����� � p��r�R�)=u�=zƽ��� � p!Ĕ�v�B=�'�=w�ཐ�� � p�����S=�q�=�dｐ�� � pŶ�
ף<\�B>
ף< |    L:8�
ף�\�B>
ף< |    L�8�5^�<�k>`�P< |    *;��X94��k>`�P< |    ����
ף�\�B>
ף� �    L:8�
ף<\�B>
ף� �    L�8�X94��k>`�P� �    �.��5^�<�k>`�P� �    *���
ף<\�B>
ף<~�     L���5^�<�k>`�P<~�     ��
ף<\�B>
ף�~�     L:��5^�<�k>`�P�~�     8�
ף�\�B>
ף<�2     L:��
ף�\�B>
ף��2     L���X94��k>`�P<�2     8E�X94��k>`�P��2     �E�X94��k>`�P<��     8��X94��k>`�P���     ����	���>�	<��     M5���	���>�	���     M���X94��k>`�P� �    �.��5^�<�k>`�P� �    *����	���>�	� �    M5���	<��>�	� �    M���5^�<�k>`�P<r6     ����	<��>�	<r6     M��5^�<�k>`�P�r6     8���	<��>�	�r6     M5�5^�<�k>`�P< }    *;��X94��k>`�P< }    �����	<��>�	< }    M5���	���>�	< }    M���
ף�\�B>
ף<      L�&?
ף<\�B>
ף<      L:&?
ף<\�B>
ף�      L:�2
ף�\�B>
ף�      L��2�	���>�	<      M�S=�	���>�	�      M�Y9�	<��>�	<      M5S=�	<��>�	�      M5Y9o$��>�%�� �    R>^�Xś��>�%�� �    �9^��k�$G>�줽 �    �<�^� �u�=zƽ �    �44�D�)<u�=zƽ �    ��4�����9(�=]��� �    �9��^��<���=%�� �    ��վ��=�{�=�f�� �    ����R�)=u�=zƽ �    ��4��E�<u�=zƽ �    �4�����{�=�f�� �    �=��Y���u�=zƽ �    �<4�R�)�u�=zƽ �    �>4��R�<�>�%�� �    Q�^�̵(=�>�%�� �    |�^�/��<$G>�줽 �    Ҽ�      vertex_count    �         array_index_data    4               
  	 	  
                               "   ! ! # " & $ % % ' & * ( ) ) + * . , - - / . 2 0 1 1 3 2 6 4 5 5 7 6 : 8 9 9 ; : > < = = ? > B @ A A C B F D E E G F J H I I K J N L M M O N R P Q Q S R V T U W U T W T X W X Y Z Y X X [ Z X \ [ \ ] [ \ ^ ] ] _ [ _ ` [ Y a W a ^ W a [ ` W b U W c b d b c a e ^ e ] ^ a ` e e f ] e g f _ f g g ` _ j h i i k j n l m m o n m p o p q o t r s s u t u v t v w t v x w x y w z u s s { z { w y { | z { y | { } w � ~   � � � � � � � � � � � � � � � � � � � � � � � � � �       index_count         
   primitive             format    }       aabb    q��    q���q��>��>q�v>      skeleton_aabb              blend_shape_data           	   material                 
         array_data    �  �E�<u�=zƽ ~
    �<&³�=�q�=�d� ~
    >��R�)=u�=zƽ ~
    �>&���S=�q�=�d� ~
    @�Ð��=       �k��    ���*q�>)\�=   �k��    z�����u=    ��Խk��    �@�*q��=)\�=q���k��    zA��q��=)\�=q��=k�=    z���q�>)\�=   �k�=    zA����u=    ���=k�=    ���*���=       �k�=    �@�*q��)\�=   ����    zA������       ����    �@�*q���)\�=q������    z�����u�    ��Խ���    ���*q��=)\�=q��=j=    z���z�X=\�B>���=j=    *�m�q�>)\�=   �j=    zA��z��=\�B>   �j=    *@m�����{�=�f��p��    �Cr�v�B��'�=w��p��    �D�R�)�u�=zƽp��    !D����S��q�=�d�p��    E����u�    ��Խ �    �@�*��u=    ��Խ �    ���*q���)\�=q��� �    zA��q��=)\�=q��� �    z���D�)<u�=zƽ�[�    ��ܽ��S<�q�=�dｨ[�    ��@�^��<���=%���[�    |�����<�1�=n/齨[�    �č���u=    ���= �{    �@�*��u�    ���= �{    ���*q��=)\�=q��= �{    zA��q���)\�=q��= �{    z����k�$G>�줽���    ��.�Xś��>�%�����    8�L�T��
�#>�rʽ���    Ó�T�i��>Cٽ���    ��M�����9(�=]����Q(    ^���Y���u�=zƽ�Q(    ��U���¼�?�=��轨Q(    v�<�����q�=�dｨQ(    �į�q���)\�=q��=��=    zA����u�    ���=��=    �@�*q��)\�=   ���=    z�������       ���=    ���*q��=)\�=q��= {    zA��q���)\�=q��= {    z���z�X=\�B>���= {    *@m�z�X�\�B>���= {    *�m��k�$G>�줽o��    �B/�T��
�#>�rʽo��    D��o$��>�%��o��    FC�¬�7��>Cٽo��    wD��/��<$G>�줽q��    �A0�/��<
�#>�rʽq��    	C���R�<�>�%��q��    4BL�/�z<�>Cٽq��    �CL�/�z<�>Cٽ ~     �8_�c'<=�>Cٽ ~     ;?_��R�<�>�%�� ~     Q:��̵(=�>�%�� ~     |>��q�>)\�=   �j�    z���z��=\�B>   �j�    *�m�q��=)\�=q���j�    zA��z�X=\�B>����j�    *@m�/��<$G>�줽���    ��<�̵(=�>�%�����    Jñ�/��<
�#>�rʽ���    ģ�c'<=�>Cٽ���    zĲ/!��q�=�d� ~
    2�����S<�q�=�d� ~
    8��^� �u�=zƽ ~
    ��&�D�)<u�=zƽ ~
    �6&���S��q�=�d� ~
    ��Ñ���q�=�d� ~
    ��R�)�u�=zƽ ~
    ��&�Y���u�=zƽ ~
    ¼&�z�ؽ\�B>   ���    *@m�q��)\�=   ���    zA��z�X�\�B>������    *�m�q���)\�=q�����    z�������q�=�d� �    �=���/!��q�=�d� �    26����¼�?�=��� �    ;���S=�q�=�d� �    �����S��q�=�d� �    @��q��=)\�=q��� �    z���q���)\�=q��� �    zA��z�X�\�B>���� �    *@m�v�B��'�=w�� �    ?����7��>Cٽ �    ?��v�B=�'�=w�� �    ���T��
�#>�rʽ �    ~<6�/��<
�#>�rʽ �    Ҽ6�z�X=\�B>���� �    *�m���S<�q�=�d� �    �����=�q�=�d� �    ������<�1�=n/� �    �þc'<=�>Cٽ �    ;���T�i��>Cٽ �    ~8��/�z<�>Cٽ �    Ҹ����¼�?�=���X[     {D���/!��q�=�d�X[     �DS�����9(�=]���X[     lC2�^� �u�=zƽX[     �Cｐ���       � �     �D <��u�    ���= �     �@E��u�    ��Խ �     �@.�u=    ��Խ �     ��.�u=    ���= �     ��E���=       � �     �� <z�ؽ\�B>   �      *� <z�X�\�B>����      *�6�z�X�\�B>���=      *��D2ZG�\�B>   �     �� <2ZǼ\�B>n�,=     ��QAz�X=\�B>���=      *@�D2Z�<\�B>n�,=     �;QA2ZG=\�B>   �     �? <2ZǼ\�B>n�,�     ��F�z�X=\�B>����      *@6�2Z�<\�B>n�,�     �;F�z��=\�B>   �      *D <^��<���=%��XQ)    lC�����<�1�=n/�XQ)    ~D%��E�<u�=zƽXQ)    �C\���=�q�=�d�XQ)    �D��q���)\�=q��=�=    zA��q��)\�=   ��=    z���z�X�\�B>���=�=    *@m�z�ؽ\�B>   ��=    *�mŬ�7��>Cٽ ~     �_�T�i��>Cٽ ~     ~�_�o$��>�%�� ~     R���Xś��>�%�� ~     ����v�B��'�=w�� ��    ?������{�=�f�� ��    �=��v�B=�'�=w�� ��    �����=�{�=�f�� ��    ������=�{�=�f�����    ��r�R�)=u�=zƽ���    !Ĕ�v�B=�'�=w�ཐ��    �����S=�q�=�dｐ��    Ŷ�
ף<\�B>
ף< |   L:8�
ף�\�B>
ף< |   L�8�5^�<�k>`�P< |   *;��X94��k>`�P< |   ����
ף�\�B>
ף� � �  L:8�
ף<\�B>
ף� � �  L�8�X94��k>`�P� � �  �.��5^�<�k>`�P� � �  *���
ף<\�B>
ף<~�    �L���5^�<�k>`�P<~�    ���
ף<\�B>
ף�~�    �L:��5^�<�k>`�P�~�    �8�
ף�\�B>
ף<�2    L:��
ף�\�B>
ף��2    L���X94��k>`�P<�2    ~8E�X94��k>`�P��2    ~�E�X94��k>`�P<��    ~8��X94��k>`�P���    ~����	���>�	<��    M5���	���>�	���    M���X94��k>`�P� � �  �.��5^�<�k>`�P� � �  *����	���>�	� � �  M5���	<��>�	� � �  M���5^�<�k>`�P<r6    �����	<��>�	<r6    �M��5^�<�k>`�P�r6    �8���	<��>�	�r6    �M5�5^�<�k>`�P< } ~  *;��X94��k>`�P< }   �����	<��>�	< }   M5���	���>�	< }   M���
ף�\�B>
ף<     L�&?
ף<\�B>
ף<     L:&?
ף<\�B>
ף�     L:�2
ף�\�B>
ף�     L��2�	���>�	<     M�S=�	���>�	�     M�Y9�	<��>�	<     M5S=�	<��>�	�     M5Y9o$��>�%�� �    R>^�Xś��>�%�� �    �9^��k�$G>�줽 �    �<�^� �u�=zƽ �    �44�D�)<u�=zƽ �    ��4�����9(�=]��� �    �9��^��<���=%�� �    ��վ��=�{�=�f�� �    ����R�)=u�=zƽ �    ��4��E�<u�=zƽ �    �4�����{�=�f�� �    �=��Y���u�=zƽ �    �<4�R�)�u�=zƽ �    �>4��R�<�>�%�� �    Q�^�̵(=�>�%�� �    |�^�/��<$G>�줽 �    Ҽ�      vertex_count    �         array_index_data    �   � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � v u z z � v � x v � � x � � x � � z z | � | � � | x � | y x � � � � � �       index_count    T      
   primitive             format    }       aabb    q��    q���q��>��>q�v>      skeleton_aabb              blend_shape_data           	   material                
         array_data    �  �E�<u�=zƽ ~
    �<&³�=�q�=�d� ~
    >��R�)=u�=zƽ ~
    �>&���S=�q�=�d� ~
    @�Ð��=       �k��    ���*q�>)\�=   �k��    z�����u=    ��Խk��    �@�*q��=)\�=q���k��    zA��q��=)\�=q��=k�=    z���q�>)\�=   �k�=    zA����u=    ���=k�=    ���*���=       �k�=    �@�*q��)\�=   ����    zA������       ����    �@�*q���)\�=q������    z�����u�    ��Խ���    ���*q��=)\�=q��=j=    z���z�X=\�B>���=j=    *�m�q�>)\�=   �j=    zA��z��=\�B>   �j=    *@m�����{�=�f��p��    �Cr�v�B��'�=w��p��    �D�R�)�u�=zƽp��    !D����S��q�=�d�p��    E����u�    ��Խ �    �@�*��u=    ��Խ �    ���*q���)\�=q��� �    zA��q��=)\�=q��� �    z���D�)<u�=zƽ�[�    ��ܽ��S<�q�=�dｨ[�    ��@�^��<���=%���[�    |�����<�1�=n/齨[�    �č���u=    ���= �{    �@�*��u�    ���= �{    ���*q��=)\�=q��= �{    zA��q���)\�=q��= �{    z����k�$G>�줽���    ��.�Xś��>�%�����    8�L�T��
�#>�rʽ���    Ó�T�i��>Cٽ���    ��M�����9(�=]����Q(    ^���Y���u�=zƽ�Q(    ��U���¼�?�=��轨Q(    v�<�����q�=�dｨQ(    �į�q���)\�=q��=��=    zA����u�    ���=��=    �@�*q��)\�=   ���=    z�������       ���=    ���*q��=)\�=q��= {    zA��q���)\�=q��= {    z���z�X=\�B>���= {    *@m�z�X�\�B>���= {    *�m��k�$G>�줽o��    �B/�T��
�#>�rʽo��    D��o$��>�%��o��    FC�¬�7��>Cٽo��    wD��/��<$G>�줽q��    �A0�/��<
�#>�rʽq��    	C���R�<�>�%��q��    4BL�/�z<�>Cٽq��    �CL�/�z<�>Cٽ ~     �8_�c'<=�>Cٽ ~     ;?_��R�<�>�%�� ~     Q:��̵(=�>�%�� ~     |>��q�>)\�=   �j�    z���z��=\�B>   �j�    *�m�q��=)\�=q���j�    zA��z�X=\�B>����j�    *@m�/��<$G>�줽���    ��<�̵(=�>�%�����    Jñ�/��<
�#>�rʽ���    ģ�c'<=�>Cٽ���    zĲ/!��q�=�d� ~
    2�����S<�q�=�d� ~
    8��^� �u�=zƽ ~
    ��&�D�)<u�=zƽ ~
    �6&���S��q�=�d� ~
    ��Ñ���q�=�d� ~
    ��R�)�u�=zƽ ~
    ��&�Y���u�=zƽ ~
    ¼&�z�ؽ\�B>   ���    *@m�q��)\�=   ���    zA��z�X�\�B>������    *�m�q���)\�=q�����    z�������q�=�d� �    �=���/!��q�=�d� �    26����¼�?�=��� �    ;���S=�q�=�d� �    �����S��q�=�d� �    @��q��=)\�=q��� �    z���q���)\�=q��� �    zA��z�X�\�B>���� �    *@m�v�B��'�=w�� �    ?����7��>Cٽ �    ?��v�B=�'�=w�� �    ���T��
�#>�rʽ �    ~<6�/��<
�#>�rʽ �    Ҽ6�z�X=\�B>���� �    *�m���S<�q�=�d� �    �����=�q�=�d� �    ������<�1�=n/� �    �þc'<=�>Cٽ �    ;���T�i��>Cٽ �    ~8��/�z<�>Cٽ �    Ҹ����¼�?�=���X[     {D���/!��q�=�d�X[     �DS�����9(�=]���X[     lC2�^� �u�=zƽX[     �Cｐ���       � �     �D <��u�    ���= �     �@E��u�    ��Խ �     �@.�u=    ��Խ �     ��.�u=    ���= �     ��E���=       � �     �� <z�ؽ\�B>   �      *� <z�X�\�B>����      *�6�z�X�\�B>���=      *��D2ZG�\�B>   �      �� <2ZǼ\�B>n�,=      ��QAz�X=\�B>���=      *@�D2Z�<\�B>n�,=      �;QA2ZG=\�B>   �      �? <2ZǼ\�B>n�,�      ��F�z�X=\�B>����      *@6�2Z�<\�B>n�,�      �;F�z��=\�B>   �      *D <^��<���=%��XQ)    lC�����<�1�=n/�XQ)    ~D%��E�<u�=zƽXQ)    �C\���=�q�=�d�XQ)    �D��q���)\�=q��=�=    zA��q��)\�=   ��=    z���z�X�\�B>���=�=    *@m�z�ؽ\�B>   ��=    *�mŬ�7��>Cٽ ~     �_�T�i��>Cٽ ~     ~�_�o$��>�%�� ~     R���Xś��>�%�� ~     ����v�B��'�=w�� ��    ?������{�=�f�� ��    �=��v�B=�'�=w�� ��    �����=�{�=�f�� ��    ������=�{�=�f�����    ��r�R�)=u�=zƽ���    !Ĕ�v�B=�'�=w�ཐ��    �����S=�q�=�dｐ��    Ŷ�
ף<\�B>
ף< |    L:8�
ף�\�B>
ף< |    L�8�5^�<�k>`�P< |    *;��X94��k>`�P< |    ����
ף�\�B>
ף� �    L:8�
ף<\�B>
ף� �    L�8�X94��k>`�P� �    �.��5^�<�k>`�P� �    *���
ף<\�B>
ף<~�     L���5^�<�k>`�P<~�     ��
ף<\�B>
ף�~�     L:��5^�<�k>`�P�~�     8�
ף�\�B>
ף<�2     L:��
ף�\�B>
ף��2     L���X94��k>`�P<�2     8E�X94��k>`�P��2     �E�X94��k>`�P<��     8��X94��k>`�P���     ����	���>�	<��     M5���	���>�	���     M���X94��k>`�P� �    �.��5^�<�k>`�P� �    *����	���>�	� �    M5���	<��>�	� �    M���5^�<�k>`�P<r6     ����	<��>�	<r6     M��5^�<�k>`�P�r6     8���	<��>�	�r6     M5�5^�<�k>`�P< }    *;��X94��k>`�P< }    �����	<��>�	< }    M5���	���>�	< }    M���
ף�\�B>
ף<      L�&?
ף<\�B>
ף<      L:&?
ף<\�B>
ף�      L:�2
ף�\�B>
ף�      L��2�	���>�	<      M�S=�	���>�	�      M�Y9�	<��>�	<      M5S=�	<��>�	�      M5Y9o$��>�%�� � �  R>^�Xś��>�%�� � �  �9^��k�$G>�줽 � �  �<�^� �u�=zƽ � �  �44�D�)<u�=zƽ � �  ��4�����9(�=]��� � �  �9��^��<���=%�� � �  ��վ��=�{�=�f�� � �  ����R�)=u�=zƽ � �  ��4��E�<u�=zƽ � �  �4�����{�=�f�� � �  �=��Y���u�=zƽ � �  �<4�R�)�u�=zƽ � �  �>4��R�<�>�%�� � �  Q�^�̵(=�>�%�� � �  |�^�/��<$G>�줽 � �  Ҽ�      vertex_count    �         array_index_data    <   � � � � � � � � � � � � � � � � � � � � � � � � � � � � � �       index_count          
   primitive             format    }       aabb    q��    q���q��>��>q�v>      skeleton_aabb              blend_shape_data           	   material             PackedScene    	      	         names "   	      pumpkinTallCarved    Spatial 
   tmpParent 
   transform    mesh    material/0    material/1    material/2    MeshInstance    	   variants            �?              �?              �?��L�    
ף�                      node_count             nodes        ��������       ����                      ����                      ����                                            conn_count              conns               node_paths              editable_instances              version       RSRC            [remap]

importer="scene"
type="PackedScene"
path="res://.import/pumpkinTallCarved.glb-3a19895f5ad8fe662db9a0916529af23.scn"

[deps]

source_file="res://pumpkinTallCarved.glb"
dest_files=[ "res://.import/pumpkinTallCarved.glb-3a19895f5ad8fe662db9a0916529af23.scn" ]

[params]

nodes/root_type="Spatial"
nodes/root_name="Scene Root"
nodes/root_scale=1.0
nodes/custom_script=""
nodes/storage=0
nodes/use_legacy_names=false
materials/location=1
materials/storage=1
materials/keep_on_reimport=true
meshes/compress=true
meshes/ensure_tangents=true
meshes/storage=0
meshes/light_baking=0
meshes/lightmap_texel_size=0.1
skins/use_named_skins=true
external_files/store_in_subdir=false
animation/import=true
animation/fps=15
animation/filter_script=""
animation/storage=false
animation/keep_custom_tracks=false
animation/optimizer/enabled=true
animation/optimizer/max_linear_error=0.05
animation/optimizer/max_angular_error=0.01
animation/optimizer/max_angle=22
animation/optimizer/remove_unused_tracks=true
animation/clips/amount=0
animation/clip_1/name=""
animation/clip_1/start_frame=0
animation/clip_1/end_frame=0
animation/clip_1/loops=false
animation/clip_2/name=""
animation/clip_2/start_frame=0
animation/clip_2/end_frame=0
animation/clip_2/loops=false
animation/clip_3/name=""
animation/clip_3/start_frame=0
animation/clip_3/end_frame=0
animation/clip_3/loops=false
animation/clip_4/name=""
animation/clip_4/start_frame=0
animation/clip_4/end_frame=0
animation/clip_4/loops=false
animation/clip_5/name=""
animation/clip_5/start_frame=0
animation/clip_5/end_frame=0
animation/clip_5/loops=false
animation/clip_6/name=""
animation/clip_6/start_frame=0
animation/clip_6/end_frame=0
animation/clip_6/loops=false
animation/clip_7/name=""
animation/clip_7/start_frame=0
animation/clip_7/end_frame=0
animation/clip_7/loops=false
animation/clip_8/name=""
animation/clip_8/start_frame=0
animation/clip_8/end_frame=0
animation/clip_8/loops=false
animation/clip_9/name=""
animation/clip_9/start_frame=0
animation/clip_9/end_frame=0
animation/clip_9/loops=false
animation/clip_10/name=""
animation/clip_10/start_frame=0
animation/clip_10/end_frame=0
animation/clip_10/loops=false
animation/clip_11/name=""
animation/clip_11/start_frame=0
animation/clip_11/end_frame=0
animation/clip_11/loops=false
animation/clip_12/name=""
animation/clip_12/start_frame=0
animation/clip_12/end_frame=0
animation/clip_12/loops=false
animation/clip_13/name=""
animation/clip_13/start_frame=0
animation/clip_13/end_frame=0
animation/clip_13/loops=false
animation/clip_14/name=""
animation/clip_14/start_frame=0
animation/clip_14/end_frame=0
animation/clip_14/loops=false
animation/clip_15/name=""
animation/clip_15/start_frame=0
animation/clip_15/end_frame=0
animation/clip_15/loops=false
animation/clip_16/name=""
animation/clip_16/start_frame=0
animation/clip_16/end_frame=0
animation/clip_16/loops=false
animation/clip_17/name=""
animation/clip_17/start_frame=0
animation/clip_17/end_frame=0
animation/clip_17/loops=false
animation/clip_18/name=""
animation/clip_18/start_frame=0
animation/clip_18/end_frame=0
animation/clip_18/loops=false
animation/clip_19/name=""
animation/clip_19/start_frame=0
animation/clip_19/end_frame=0
animation/clip_19/loops=false
animation/clip_20/name=""
animation/clip_20/start_frame=0
animation/clip_20/end_frame=0
animation/clip_20/loops=false
animation/clip_21/name=""
animation/clip_21/start_frame=0
animation/clip_21/end_frame=0
animation/clip_21/loops=false
animation/clip_22/name=""
animation/clip_22/start_frame=0
animation/clip_22/end_frame=0
animation/clip_22/loops=false
animation/clip_23/name=""
animation/clip_23/start_frame=0
animation/clip_23/end_frame=0
animation/clip_23/loops=false
animation/clip_24/name=""
animation/clip_24/start_frame=0
animation/clip_24/end_frame=0
animation/clip_24/loops=false
animation/clip_25/name=""
animation/clip_25/start_frame=0
animation/clip_25/end_frame=0
animation/clip_25/loops=false
animation/clip_26/name=""
animation/clip_26/start_frame=0
animation/clip_26/end_frame=0
animation/clip_26/loops=false
animation/clip_27/name=""
animation/clip_27/start_frame=0
animation/clip_27/end_frame=0
animation/clip_27/loops=false
animation/clip_28/name=""
animation/clip_28/start_frame=0
animation/clip_28/end_frame=0
animation/clip_28/loops=false
animation/clip_29/name=""
animation/clip_29/start_frame=0
animation/clip_29/end_frame=0
animation/clip_29/loops=false
animation/clip_30/name=""
animation/clip_30/start_frame=0
animation/clip_30/end_frame=0
animation/clip_30/loops=false
animation/clip_31/name=""
animation/clip_31/start_frame=0
animation/clip_31/end_frame=0
animation/clip_31/loops=false
animation/clip_32/name=""
animation/clip_32/start_frame=0
animation/clip_32/end_frame=0
animation/clip_32/loops=false
animation/clip_33/name=""
animation/clip_33/start_frame=0
animation/clip_33/end_frame=0
animation/clip_33/loops=false
animation/clip_34/name=""
animation/clip_34/start_frame=0
animation/clip_34/end_frame=0
animation/clip_34/loops=false
animation/clip_35/name=""
animation/clip_35/start_frame=0
animation/clip_35/end_frame=0
animation/clip_35/loops=false
animation/clip_36/name=""
animation/clip_36/start_frame=0
animation/clip_36/end_frame=0
animation/clip_36/loops=false
animation/clip_37/name=""
animation/clip_37/start_frame=0
animation/clip_37/end_frame=0
animation/clip_37/loops=false
animation/clip_38/name=""
animation/clip_38/start_frame=0
animation/clip_38/end_frame=0
animation/clip_38/loops=false
animation/clip_39/name=""
animation/clip_39/start_frame=0
animation/clip_39/end_frame=0
animation/clip_39/loops=false
animation/clip_40/name=""
animation/clip_40/start_frame=0
animation/clip_40/end_frame=0
animation/clip_40/loops=false
animation/clip_41/name=""
animation/clip_41/start_frame=0
animation/clip_41/end_frame=0
animation/clip_41/loops=false
animation/clip_42/name=""
animation/clip_42/start_frame=0
animation/clip_42/end_frame=0
animation/clip_42/loops=false
animation/clip_43/name=""
animation/clip_43/start_frame=0
animation/clip_43/end_frame=0
animation/clip_43/loops=false
animation/clip_44/name=""
animation/clip_44/start_frame=0
animation/clip_44/end_frame=0
animation/clip_44/loops=false
animation/clip_45/name=""
animation/clip_45/start_frame=0
animation/clip_45/end_frame=0
animation/clip_45/loops=false
animation/clip_46/name=""
animation/clip_46/start_frame=0
animation/clip_46/end_frame=0
animation/clip_46/loops=false
animation/clip_47/name=""
animation/clip_47/start_frame=0
animation/clip_47/end_frame=0
animation/clip_47/loops=false
animation/clip_48/name=""
animation/clip_48/start_frame=0
animation/clip_48/end_frame=0
animation/clip_48/loops=false
animation/clip_49/name=""
animation/clip_49/start_frame=0
animation/clip_49/end_frame=0
animation/clip_49/loops=false
animation/clip_50/name=""
animation/clip_50/start_frame=0
animation/clip_50/end_frame=0
animation/clip_50/loops=false
animation/clip_51/name=""
animation/clip_51/start_frame=0
animation/clip_51/end_frame=0
animation/clip_51/loops=false
animation/clip_52/name=""
animation/clip_52/start_frame=0
animation/clip_52/end_frame=0
animation/clip_52/loops=false
animation/clip_53/name=""
animation/clip_53/start_frame=0
animation/clip_53/end_frame=0
animation/clip_53/loops=false
animation/clip_54/name=""
animation/clip_54/start_frame=0
animation/clip_54/end_frame=0
animation/clip_54/loops=false
animation/clip_55/name=""
animation/clip_55/start_frame=0
animation/clip_55/end_frame=0
animation/clip_55/loops=false
animation/clip_56/name=""
animation/clip_56/start_frame=0
animation/clip_56/end_frame=0
animation/clip_56/loops=false
animation/clip_57/name=""
animation/clip_57/start_frame=0
animation/clip_57/end_frame=0
animation/clip_57/loops=false
animation/clip_58/name=""
animation/clip_58/start_frame=0
animation/clip_58/end_frame=0
animation/clip_58/loops=false
animation/clip_59/name=""
animation/clip_59/start_frame=0
animation/clip_59/end_frame=0
animation/clip_59/loops=false
animation/clip_60/name=""
animation/clip_60/start_frame=0
animation/clip_60/end_frame=0
animation/clip_60/loops=false
animation/clip_61/name=""
animation/clip_61/start_frame=0
animation/clip_61/end_frame=0
animation/clip_61/loops=false
animation/clip_62/name=""
animation/clip_62/start_frame=0
animation/clip_62/end_frame=0
animation/clip_62/loops=false
animation/clip_63/name=""
animation/clip_63/start_frame=0
animation/clip_63/end_frame=0
animation/clip_63/loops=false
animation/clip_64/name=""
animation/clip_64/start_frame=0
animation/clip_64/end_frame=0
animation/clip_64/loops=false
animation/clip_65/name=""
animation/clip_65/start_frame=0
animation/clip_65/end_frame=0
animation/clip_65/loops=false
animation/clip_66/name=""
animation/clip_66/start_frame=0
animation/clip_66/end_frame=0
animation/clip_66/loops=false
animation/clip_67/name=""
animation/clip_67/start_frame=0
animation/clip_67/end_frame=0
animation/clip_67/loops=false
animation/clip_68/name=""
animation/clip_68/start_frame=0
animation/clip_68/end_frame=0
animation/clip_68/loops=false
animation/clip_69/name=""
animation/clip_69/start_frame=0
animation/clip_69/end_frame=0
animation/clip_69/loops=false
animation/clip_70/name=""
animation/clip_70/start_frame=0
animation/clip_70/end_frame=0
animation/clip_70/loops=false
animation/clip_71/name=""
animation/clip_71/start_frame=0
animation/clip_71/end_frame=0
animation/clip_71/loops=false
animation/clip_72/name=""
animation/clip_72/start_frame=0
animation/clip_72/end_frame=0
animation/clip_72/loops=false
animation/clip_73/name=""
animation/clip_73/start_frame=0
animation/clip_73/end_frame=0
animation/clip_73/loops=false
animation/clip_74/name=""
animation/clip_74/start_frame=0
animation/clip_74/end_frame=0
animation/clip_74/loops=false
animation/clip_75/name=""
animation/clip_75/start_frame=0
animation/clip_75/end_frame=0
animation/clip_75/loops=false
animation/clip_76/name=""
animation/clip_76/start_frame=0
animation/clip_76/end_frame=0
animation/clip_76/loops=false
animation/clip_77/name=""
animation/clip_77/start_frame=0
animation/clip_77/end_frame=0
animation/clip_77/loops=false
animation/clip_78/name=""
animation/clip_78/start_frame=0
animation/clip_78/end_frame=0
animation/clip_78/loops=false
animation/clip_79/name=""
animation/clip_79/start_frame=0
animation/clip_79/end_frame=0
animation/clip_79/loops=false
animation/clip_80/name=""
animation/clip_80/start_frame=0
animation/clip_80/end_frame=0
animation/clip_80/loops=false
animation/clip_81/name=""
animation/clip_81/start_frame=0
animation/clip_81/end_frame=0
animation/clip_81/loops=false
animation/clip_82/name=""
animation/clip_82/start_frame=0
animation/clip_82/end_frame=0
animation/clip_82/loops=false
animation/clip_83/name=""
animation/clip_83/start_frame=0
animation/clip_83/end_frame=0
animation/clip_83/loops=false
animation/clip_84/name=""
animation/clip_84/start_frame=0
animation/clip_84/end_frame=0
animation/clip_84/loops=false
animation/clip_85/name=""
animation/clip_85/start_frame=0
animation/clip_85/end_frame=0
animation/clip_85/loops=false
animation/clip_86/name=""
animation/clip_86/start_frame=0
animation/clip_86/end_frame=0
animation/clip_86/loops=false
animation/clip_87/name=""
animation/clip_87/start_frame=0
animation/clip_87/end_frame=0
animation/clip_87/loops=false
animation/clip_88/name=""
animation/clip_88/start_frame=0
animation/clip_88/end_frame=0
animation/clip_88/loops=false
animation/clip_89/name=""
animation/clip_89/start_frame=0
animation/clip_89/end_frame=0
animation/clip_89/loops=false
animation/clip_90/name=""
animation/clip_90/start_frame=0
animation/clip_90/end_frame=0
animation/clip_90/loops=false
animation/clip_91/name=""
animation/clip_91/start_frame=0
animation/clip_91/end_frame=0
animation/clip_91/loops=false
animation/clip_92/name=""
animation/clip_92/start_frame=0
animation/clip_92/end_frame=0
animation/clip_92/loops=false
animation/clip_93/name=""
animation/clip_93/start_frame=0
animation/clip_93/end_frame=0
animation/clip_93/loops=false
animation/clip_94/name=""
animation/clip_94/start_frame=0
animation/clip_94/end_frame=0
animation/clip_94/loops=false
animation/clip_95/name=""
animation/clip_95/start_frame=0
animation/clip_95/end_frame=0
animation/clip_95/loops=false
animation/clip_96/name=""
animation/clip_96/start_frame=0
animation/clip_96/end_frame=0
animation/clip_96/loops=false
animation/clip_97/name=""
animation/clip_97/start_frame=0
animation/clip_97/end_frame=0
animation/clip_97/loops=false
animation/clip_98/name=""
animation/clip_98/start_frame=0
animation/clip_98/end_frame=0
animation/clip_98/loops=false
animation/clip_99/name=""
animation/clip_99/start_frame=0
animation/clip_99/end_frame=0
animation/clip_99/loops=false
animation/clip_100/name=""
animation/clip_100/start_frame=0
animation/clip_100/end_frame=0
animation/clip_100/loops=false
animation/clip_101/name=""
animation/clip_101/start_frame=0
animation/clip_101/end_frame=0
animation/clip_101/loops=false
animation/clip_102/name=""
animation/clip_102/start_frame=0
animation/clip_102/end_frame=0
animation/clip_102/loops=false
animation/clip_103/name=""
animation/clip_103/start_frame=0
animation/clip_103/end_frame=0
animation/clip_103/loops=false
animation/clip_104/name=""
animation/clip_104/start_frame=0
animation/clip_104/end_frame=0
animation/clip_104/loops=false
animation/clip_105/name=""
animation/clip_105/start_frame=0
animation/clip_105/end_frame=0
animation/clip_105/loops=false
animation/clip_106/name=""
animation/clip_106/start_frame=0
animation/clip_106/end_frame=0
animation/clip_106/loops=false
animation/clip_107/name=""
animation/clip_107/start_frame=0
animation/clip_107/end_frame=0
animation/clip_107/loops=false
animation/clip_108/name=""
animation/clip_108/start_frame=0
animation/clip_108/end_frame=0
animation/clip_108/loops=false
animation/clip_109/name=""
animation/clip_109/start_frame=0
animation/clip_109/end_frame=0
animation/clip_109/loops=false
animation/clip_110/name=""
animation/clip_110/start_frame=0
animation/clip_110/end_frame=0
animation/clip_110/loops=false
animation/clip_111/name=""
animation/clip_111/start_frame=0
animation/clip_111/end_frame=0
animation/clip_111/loops=false
animation/clip_112/name=""
animation/clip_112/start_frame=0
animation/clip_112/end_frame=0
animation/clip_112/loops=false
animation/clip_113/name=""
animation/clip_113/start_frame=0
animation/clip_113/end_frame=0
animation/clip_113/loops=false
animation/clip_114/name=""
animation/clip_114/start_frame=0
animation/clip_114/end_frame=0
animation/clip_114/loops=false
animation/clip_115/name=""
animation/clip_115/start_frame=0
animation/clip_115/end_frame=0
animation/clip_115/loops=false
animation/clip_116/name=""
animation/clip_116/start_frame=0
animation/clip_116/end_frame=0
animation/clip_116/loops=false
animation/clip_117/name=""
animation/clip_117/start_frame=0
animation/clip_117/end_frame=0
animation/clip_117/loops=false
animation/clip_118/name=""
animation/clip_118/start_frame=0
animation/clip_118/end_frame=0
animation/clip_118/loops=false
animation/clip_119/name=""
animation/clip_119/start_frame=0
animation/clip_119/end_frame=0
animation/clip_119/loops=false
animation/clip_120/name=""
animation/clip_120/start_frame=0
animation/clip_120/end_frame=0
animation/clip_120/loops=false
animation/clip_121/name=""
animation/clip_121/start_frame=0
animation/clip_121/end_frame=0
animation/clip_121/loops=false
animation/clip_122/name=""
animation/clip_122/start_frame=0
animation/clip_122/end_frame=0
animation/clip_122/loops=false
animation/clip_123/name=""
animation/clip_123/start_frame=0
animation/clip_123/end_frame=0
animation/clip_123/loops=false
animation/clip_124/name=""
animation/clip_124/start_frame=0
animation/clip_124/end_frame=0
animation/clip_124/loops=false
animation/clip_125/name=""
animation/clip_125/start_frame=0
animation/clip_125/end_frame=0
animation/clip_125/loops=false
animation/clip_126/name=""
animation/clip_126/start_frame=0
animation/clip_126/end_frame=0
animation/clip_126/loops=false
animation/clip_127/name=""
animation/clip_127/start_frame=0
animation/clip_127/end_frame=0
animation/clip_127/loops=false
animation/clip_128/name=""
animation/clip_128/start_frame=0
animation/clip_128/end_frame=0
animation/clip_128/loops=false
animation/clip_129/name=""
animation/clip_129/start_frame=0
animation/clip_129/end_frame=0
animation/clip_129/loops=false
animation/clip_130/name=""
animation/clip_130/start_frame=0
animation/clip_130/end_frame=0
animation/clip_130/loops=false
animation/clip_131/name=""
animation/clip_131/start_frame=0
animation/clip_131/end_frame=0
animation/clip_131/loops=false
animation/clip_132/name=""
animation/clip_132/start_frame=0
animation/clip_132/end_frame=0
animation/clip_132/loops=false
animation/clip_133/name=""
animation/clip_133/start_frame=0
animation/clip_133/end_frame=0
animation/clip_133/loops=false
animation/clip_134/name=""
animation/clip_134/start_frame=0
animation/clip_134/end_frame=0
animation/clip_134/loops=false
animation/clip_135/name=""
animation/clip_135/start_frame=0
animation/clip_135/end_frame=0
animation/clip_135/loops=false
animation/clip_136/name=""
animation/clip_136/start_frame=0
animation/clip_136/end_frame=0
animation/clip_136/loops=false
animation/clip_137/name=""
animation/clip_137/start_frame=0
animation/clip_137/end_frame=0
animation/clip_137/loops=false
animation/clip_138/name=""
animation/clip_138/start_frame=0
animation/clip_138/end_frame=0
animation/clip_138/loops=false
animation/clip_139/name=""
animation/clip_139/start_frame=0
animation/clip_139/end_frame=0
animation/clip_139/loops=false
animation/clip_140/name=""
animation/clip_140/start_frame=0
animation/clip_140/end_frame=0
animation/clip_140/loops=false
animation/clip_141/name=""
animation/clip_141/start_frame=0
animation/clip_141/end_frame=0
animation/clip_141/loops=false
animation/clip_142/name=""
animation/clip_142/start_frame=0
animation/clip_142/end_frame=0
animation/clip_142/loops=false
animation/clip_143/name=""
animation/clip_143/start_frame=0
animation/clip_143/end_frame=0
animation/clip_143/loops=false
animation/clip_144/name=""
animation/clip_144/start_frame=0
animation/clip_144/end_frame=0
animation/clip_144/loops=false
animation/clip_145/name=""
animation/clip_145/start_frame=0
animation/clip_145/end_frame=0
animation/clip_145/loops=false
animation/clip_146/name=""
animation/clip_146/start_frame=0
animation/clip_146/end_frame=0
animation/clip_146/loops=false
animation/clip_147/name=""
animation/clip_147/start_frame=0
animation/clip_147/end_frame=0
animation/clip_147/loops=false
animation/clip_148/name=""
animation/clip_148/start_frame=0
animation/clip_148/end_frame=0
animation/clip_148/loops=false
animation/clip_149/name=""
animation/clip_149/start_frame=0
animation/clip_149/end_frame=0
animation/clip_149/loops=false
animation/clip_150/name=""
animation/clip_150/start_frame=0
animation/clip_150/end_frame=0
animation/clip_150/loops=false
animation/clip_151/name=""
animation/clip_151/start_frame=0
animation/clip_151/end_frame=0
animation/clip_151/loops=false
animation/clip_152/name=""
animation/clip_152/start_frame=0
animation/clip_152/end_frame=0
animation/clip_152/loops=false
animation/clip_153/name=""
animation/clip_153/start_frame=0
animation/clip_153/end_frame=0
animation/clip_153/loops=false
animation/clip_154/name=""
animation/clip_154/start_frame=0
animation/clip_154/end_frame=0
animation/clip_154/loops=false
animation/clip_155/name=""
animation/clip_155/start_frame=0
animation/clip_155/end_frame=0
animation/clip_155/loops=false
animation/clip_156/name=""
animation/clip_156/start_frame=0
animation/clip_156/end_frame=0
animation/clip_156/loops=false
animation/clip_157/name=""
animation/clip_157/start_frame=0
animation/clip_157/end_frame=0
animation/clip_157/loops=false
animation/clip_158/name=""
animation/clip_158/start_frame=0
animation/clip_158/end_frame=0
animation/clip_158/loops=false
animation/clip_159/name=""
animation/clip_159/start_frame=0
animation/clip_159/end_frame=0
animation/clip_159/loops=false
animation/clip_160/name=""
animation/clip_160/start_frame=0
animation/clip_160/end_frame=0
animation/clip_160/loops=false
animation/clip_161/name=""
animation/clip_161/start_frame=0
animation/clip_161/end_frame=0
animation/clip_161/loops=false
animation/clip_162/name=""
animation/clip_162/start_frame=0
animation/clip_162/end_frame=0
animation/clip_162/loops=false
animation/clip_163/name=""
animation/clip_163/start_frame=0
animation/clip_163/end_frame=0
animation/clip_163/loops=false
animation/clip_164/name=""
animation/clip_164/start_frame=0
animation/clip_164/end_frame=0
animation/clip_164/loops=false
animation/clip_165/name=""
animation/clip_165/start_frame=0
animation/clip_165/end_frame=0
animation/clip_165/loops=false
animation/clip_166/name=""
animation/clip_166/start_frame=0
animation/clip_166/end_frame=0
animation/clip_166/loops=false
animation/clip_167/name=""
animation/clip_167/start_frame=0
animation/clip_167/end_frame=0
animation/clip_167/loops=false
animation/clip_168/name=""
animation/clip_168/start_frame=0
animation/clip_168/end_frame=0
animation/clip_168/loops=false
animation/clip_169/name=""
animation/clip_169/start_frame=0
animation/clip_169/end_frame=0
animation/clip_169/loops=false
animation/clip_170/name=""
animation/clip_170/start_frame=0
animation/clip_170/end_frame=0
animation/clip_170/loops=false
animation/clip_171/name=""
animation/clip_171/start_frame=0
animation/clip_171/end_frame=0
animation/clip_171/loops=false
animation/clip_172/name=""
animation/clip_172/start_frame=0
animation/clip_172/end_frame=0
animation/clip_172/loops=false
animation/clip_173/name=""
animation/clip_173/start_frame=0
animation/clip_173/end_frame=0
animation/clip_173/loops=false
animation/clip_174/name=""
animation/clip_174/start_frame=0
animation/clip_174/end_frame=0
animation/clip_174/loops=false
animation/clip_175/name=""
animation/clip_175/start_frame=0
animation/clip_175/end_frame=0
animation/clip_175/loops=false
animation/clip_176/name=""
animation/clip_176/start_frame=0
animation/clip_176/end_frame=0
animation/clip_176/loops=false
animation/clip_177/name=""
animation/clip_177/start_frame=0
animation/clip_177/end_frame=0
animation/clip_177/loops=false
animation/clip_178/name=""
animation/clip_178/start_frame=0
animation/clip_178/end_frame=0
animation/clip_178/loops=false
animation/clip_179/name=""
animation/clip_179/start_frame=0
animation/clip_179/end_frame=0
animation/clip_179/loops=false
animation/clip_180/name=""
animation/clip_180/start_frame=0
animation/clip_180/end_frame=0
animation/clip_180/loops=false
animation/clip_181/name=""
animation/clip_181/start_frame=0
animation/clip_181/end_frame=0
animation/clip_181/loops=false
animation/clip_182/name=""
animation/clip_182/start_frame=0
animation/clip_182/end_frame=0
animation/clip_182/loops=false
animation/clip_183/name=""
animation/clip_183/start_frame=0
animation/clip_183/end_frame=0
animation/clip_183/loops=false
animation/clip_184/name=""
animation/clip_184/start_frame=0
animation/clip_184/end_frame=0
animation/clip_184/loops=false
animation/clip_185/name=""
animation/clip_185/start_frame=0
animation/clip_185/end_frame=0
animation/clip_185/loops=false
animation/clip_186/name=""
animation/clip_186/start_frame=0
animation/clip_186/end_frame=0
animation/clip_186/loops=false
animation/clip_187/name=""
animation/clip_187/start_frame=0
animation/clip_187/end_frame=0
animation/clip_187/loops=false
animation/clip_188/name=""
animation/clip_188/start_frame=0
animation/clip_188/end_frame=0
animation/clip_188/loops=false
animation/clip_189/name=""
animation/clip_189/start_frame=0
animation/clip_189/end_frame=0
animation/clip_189/loops=false
animation/clip_190/name=""
animation/clip_190/start_frame=0
animation/clip_190/end_frame=0
animation/clip_190/loops=false
animation/clip_191/name=""
animation/clip_191/start_frame=0
animation/clip_191/end_frame=0
animation/clip_191/loops=false
animation/clip_192/name=""
animation/clip_192/start_frame=0
animation/clip_192/end_frame=0
animation/clip_192/loops=false
animation/clip_193/name=""
animation/clip_193/start_frame=0
animation/clip_193/end_frame=0
animation/clip_193/loops=false
animation/clip_194/name=""
animation/clip_194/start_frame=0
animation/clip_194/end_frame=0
animation/clip_194/loops=false
animation/clip_195/name=""
animation/clip_195/start_frame=0
animation/clip_195/end_frame=0
animation/clip_195/loops=false
animation/clip_196/name=""
animation/clip_196/start_frame=0
animation/clip_196/end_frame=0
animation/clip_196/loops=false
animation/clip_197/name=""
animation/clip_197/start_frame=0
animation/clip_197/end_frame=0
animation/clip_197/loops=false
animation/clip_198/name=""
animation/clip_198/start_frame=0
animation/clip_198/end_frame=0
animation/clip_198/loops=false
animation/clip_199/name=""
animation/clip_199/start_frame=0
animation/clip_199/end_frame=0
animation/clip_199/loops=false
animation/clip_200/name=""
animation/clip_200/start_frame=0
animation/clip_200/end_frame=0
animation/clip_200/loops=false
animation/clip_201/name=""
animation/clip_201/start_frame=0
animation/clip_201/end_frame=0
animation/clip_201/loops=false
animation/clip_202/name=""
animation/clip_202/start_frame=0
animation/clip_202/end_frame=0
animation/clip_202/loops=false
animation/clip_203/name=""
animation/clip_203/start_frame=0
animation/clip_203/end_frame=0
animation/clip_203/loops=false
animation/clip_204/name=""
animation/clip_204/start_frame=0
animation/clip_204/end_frame=0
animation/clip_204/loops=false
animation/clip_205/name=""
animation/clip_205/start_frame=0
animation/clip_205/end_frame=0
animation/clip_205/loops=false
animation/clip_206/name=""
animation/clip_206/start_frame=0
animation/clip_206/end_frame=0
animation/clip_206/loops=false
animation/clip_207/name=""
animation/clip_207/start_frame=0
animation/clip_207/end_frame=0
animation/clip_207/loops=false
animation/clip_208/name=""
animation/clip_208/start_frame=0
animation/clip_208/end_frame=0
animation/clip_208/loops=false
animation/clip_209/name=""
animation/clip_209/start_frame=0
animation/clip_209/end_frame=0
animation/clip_209/loops=false
animation/clip_210/name=""
animation/clip_210/start_frame=0
animation/clip_210/end_frame=0
animation/clip_210/loops=false
animation/clip_211/name=""
animation/clip_211/start_frame=0
animation/clip_211/end_frame=0
animation/clip_211/loops=false
animation/clip_212/name=""
animation/clip_212/start_frame=0
animation/clip_212/end_frame=0
animation/clip_212/loops=false
animation/clip_213/name=""
animation/clip_213/start_frame=0
animation/clip_213/end_frame=0
animation/clip_213/loops=false
animation/clip_214/name=""
animation/clip_214/start_frame=0
animation/clip_214/end_frame=0
animation/clip_214/loops=false
animation/clip_215/name=""
animation/clip_215/start_frame=0
animation/clip_215/end_frame=0
animation/clip_215/loops=false
animation/clip_216/name=""
animation/clip_216/start_frame=0
animation/clip_216/end_frame=0
animation/clip_216/loops=false
animation/clip_217/name=""
animation/clip_217/start_frame=0
animation/clip_217/end_frame=0
animation/clip_217/loops=false
animation/clip_218/name=""
animation/clip_218/start_frame=0
animation/clip_218/end_frame=0
animation/clip_218/loops=false
animation/clip_219/name=""
animation/clip_219/start_frame=0
animation/clip_219/end_frame=0
animation/clip_219/loops=false
animation/clip_220/name=""
animation/clip_220/start_frame=0
animation/clip_220/end_frame=0
animation/clip_220/loops=false
animation/clip_221/name=""
animation/clip_221/start_frame=0
animation/clip_221/end_frame=0
animation/clip_221/loops=false
animation/clip_222/name=""
animation/clip_222/start_frame=0
animation/clip_222/end_frame=0
animation/clip_222/loops=false
animation/clip_223/name=""
animation/clip_223/start_frame=0
animation/clip_223/end_frame=0
animation/clip_223/loops=false
animation/clip_224/name=""
animation/clip_224/start_frame=0
animation/clip_224/end_frame=0
animation/clip_224/loops=false
animation/clip_225/name=""
animation/clip_225/start_frame=0
animation/clip_225/end_frame=0
animation/clip_225/loops=false
animation/clip_226/name=""
animation/clip_226/start_frame=0
animation/clip_226/end_frame=0
animation/clip_226/loops=false
animation/clip_227/name=""
animation/clip_227/start_frame=0
animation/clip_227/end_frame=0
animation/clip_227/loops=false
animation/clip_228/name=""
animation/clip_228/start_frame=0
animation/clip_228/end_frame=0
animation/clip_228/loops=false
animation/clip_229/name=""
animation/clip_229/start_frame=0
animation/clip_229/end_frame=0
animation/clip_229/loops=false
animation/clip_230/name=""
animation/clip_230/start_frame=0
animation/clip_230/end_frame=0
animation/clip_230/loops=false
animation/clip_231/name=""
animation/clip_231/start_frame=0
animation/clip_231/end_frame=0
animation/clip_231/loops=false
animation/clip_232/name=""
animation/clip_232/start_frame=0
animation/clip_232/end_frame=0
animation/clip_232/loops=false
animation/clip_233/name=""
animation/clip_233/start_frame=0
animation/clip_233/end_frame=0
animation/clip_233/loops=false
animation/clip_234/name=""
animation/clip_234/start_frame=0
animation/clip_234/end_frame=0
animation/clip_234/loops=false
animation/clip_235/name=""
animation/clip_235/start_frame=0
animation/clip_235/end_frame=0
animation/clip_235/loops=false
animation/clip_236/name=""
animation/clip_236/start_frame=0
animation/clip_236/end_frame=0
animation/clip_236/loops=false
animation/clip_237/name=""
animation/clip_237/start_frame=0
animation/clip_237/end_frame=0
animation/clip_237/loops=false
animation/clip_238/name=""
animation/clip_238/start_frame=0
animation/clip_238/end_frame=0
animation/clip_238/loops=false
animation/clip_239/name=""
animation/clip_239/start_frame=0
animation/clip_239/end_frame=0
animation/clip_239/loops=false
animation/clip_240/name=""
animation/clip_240/start_frame=0
animation/clip_240/end_frame=0
animation/clip_240/loops=false
animation/clip_241/name=""
animation/clip_241/start_frame=0
animation/clip_241/end_frame=0
animation/clip_241/loops=false
animation/clip_242/name=""
animation/clip_242/start_frame=0
animation/clip_242/end_frame=0
animation/clip_242/loops=false
animation/clip_243/name=""
animation/clip_243/start_frame=0
animation/clip_243/end_frame=0
animation/clip_243/loops=false
animation/clip_244/name=""
animation/clip_244/start_frame=0
animation/clip_244/end_frame=0
animation/clip_244/loops=false
animation/clip_245/name=""
animation/clip_245/start_frame=0
animation/clip_245/end_frame=0
animation/clip_245/loops=false
animation/clip_246/name=""
animation/clip_246/start_frame=0
animation/clip_246/end_frame=0
animation/clip_246/loops=false
animation/clip_247/name=""
animation/clip_247/start_frame=0
animation/clip_247/end_frame=0
animation/clip_247/loops=false
animation/clip_248/name=""
animation/clip_248/start_frame=0
animation/clip_248/end_frame=0
animation/clip_248/loops=false
animation/clip_249/name=""
animation/clip_249/start_frame=0
animation/clip_249/end_frame=0
animation/clip_249/loops=false
animation/clip_250/name=""
animation/clip_250/start_frame=0
animation/clip_250/end_frame=0
animation/clip_250/loops=false
animation/clip_251/name=""
animation/clip_251/start_frame=0
animation/clip_251/end_frame=0
animation/clip_251/loops=false
animation/clip_252/name=""
animation/clip_252/start_frame=0
animation/clip_252/end_frame=0
animation/clip_252/loops=false
animation/clip_253/name=""
animation/clip_253/start_frame=0
animation/clip_253/end_frame=0
animation/clip_253/loops=false
animation/clip_254/name=""
animation/clip_254/start_frame=0
animation/clip_254/end_frame=0
animation/clip_254/loops=false
animation/clip_255/name=""
animation/clip_255/start_frame=0
animation/clip_255/end_frame=0
animation/clip_255/loops=false
animation/clip_256/name=""
animation/clip_256/start_frame=0
animation/clip_256/end_frame=0
animation/clip_256/loops=false
RSRC                 
   ArrayMesh                                                                 B      resource_local_to_scene    resource_name    render_priority 
   next_pass    flags_transparent    flags_use_shadow_to_opacity    flags_unshaded    flags_vertex_lighting    flags_no_depth_test    flags_use_point_size    flags_world_triplanar    flags_fixed_size    flags_albedo_tex_force_srgb    flags_do_not_receive_shadows    flags_disable_ambient_light    flags_ensure_correct_normals    vertex_color_use_as_albedo    vertex_color_is_srgb    params_diffuse_mode    params_specular_mode    params_blend_mode    params_cull_mode    params_depth_draw_mode    params_line_width    params_point_size    params_billboard_mode    params_billboard_keep_scale    params_grow    params_use_alpha_scissor    albedo_color    albedo_texture 	   metallic    metallic_specular    metallic_texture    metallic_texture_channel 
   roughness    roughness_texture    roughness_texture_channel    emission_enabled    normal_enabled    rim_enabled    clearcoat_enabled    anisotropy_enabled    ao_enabled    depth_enabled    subsurf_scatter_enabled    transmission_enabled    refraction_enabled    detail_enabled 
   uv1_scale    uv1_offset    uv1_triplanar    uv1_triplanar_sharpness 
   uv2_scale    uv2_offset    uv2_triplanar    uv2_triplanar_sharpness    proximity_fade_enable    distance_fade_mode    script    lightmap_size_hint    blend_shape_mode    custom_aabb    surfaces/0    surfaces/1    surfaces/2        
   local://1 |      
   local://2 �      
   local://3       
   local://4 D         SpatialMaterial             pumpkin       ��z?���>��L>  �?   SpatialMaterial             metal       ��\>��D?��'?  �?   SpatialMaterial             light       ��s?F�)?��=  �?
   ArrayMesh    ?               array_data    �  ����q�=�d�= ~� �  >��Q�)�t�=z�= ~� �  �>&E��t�=z�= ~� �  �<&���S��q�=�d�= ~� �  @��r��)\�=    ��= ? mz�����u�    ���=��= ? m�@�*����        ��= ? m���*q���)\�=q��=��= ? mzA��r��)\�=    ��� � mzA����u�    ��Խ��� � m���*q���)\�=q������ � mz�������        ��� � m�@�*���=        k�= ? ��@�*r��=)\�=q��=k�= ? �z���r�>)\�=    k�= ? �zA����u=    ���=k�= ? ����*z�X�\�B>������ � m*�m�r��)\�=    �� � mzA��q���)\�=q����� � mz���z�ؽ\�B>    �� � m*@m�v�B=�'�=v��=��: : p�D�T�)=t�=z�=��: : p!D����=�{�=�f�=��: : p�Cr���S=�q�=�d�=��: : pE����u�    ���= �{   ���*r��=)\�=q��= �{ ~  zA����u=    ���= �{   �@�*q���)\�=q��= �{ ~  z�����S��q�=�d�=X[  ���@�^������=%�=X[  �|��E�)�t�=z�=X[  ���ܽ��Ӽ�1�=o/�=X[  ��č���u=    ��Խ � �  ���*q���)\�=q��� � �  zA����u�    ��Խ � �  �@�*r��=)\�=q��� � �  z���Xś<�>�%�=r�  �8�L�T��<
�#>�r�=r�  �Ó��k�<$G>��=r�  ���.�T�i<�>C�=r�  ���M�Z��<t�=z�=XQ� � ���U����<�?�=���=XQ� � �v�<����<9(�=]��=XQ� � �^�����=�q�=�d�=XQ� � ��į���u=    ��Խk�� � ��@�*r�>)\�=    k�� � �z���r��=)\�=q���k�� � �zA�����=        k�� � ����*r��=)\�=q��� � �  z���z�X�\�B>���� � �  *@m�q���)\�=q��� � �  zA��z�X=\�B>���� � �  *�m�T��<
�#>�r�=��  {D��o$=�>�%�=��  {FC���k�<$G>��=��  {�B/Ī�7=�>C�=��  {wD��/���
�#>�r�=��  {	C���R���>�%�=��  {4BL�/���$G>��=��  {�A0�/�z��>C�=��  {�CL�c'<��>C�= ~  �  ;?_��R���>�%�= ~  �  Q:��/�z��>C�= ~  �  �8_�̵(��>�%�= ~  �  |>��z�ؽ\�B>    �= ? m*�m�q���)\�=q��=�= ? mzA��r��)\�=    �= ? mz���z�X�\�B>���=�= ? m*@m�̵(��>�%�=q�  �Jñ�/���
�#>�r�=q�  �ģ�/���$G>��=q�  ���<�c'<��>C�=q�  �zĲ���S��q�=�d�= ~� �  8��\� <t�=z�= ~� �  ��&/!<�q�=�d�= ~� �  2���E�)�t�=z�= ~� �  �6&�=�q�=�d�= ~� �  ��T�)=t�=z�= ~� �  ��&���S=�q�=�d�= ~� �  ���Z��<t�=z�= ~� �  ¼&�r�>)\�=    j= ? �zA��z�X=\�B>���=j= ? �*�m�z��=\�B>    j= ? �*@m�r��=)\�=q��=j= ? �z����/!<�q�=�d�= { ~  26�����<�?�=���= {   ;쾒�=�q�=�d�= {   �=����S��q�=�d�= {   �����S=�q�=�d�= {   @��q���)\�=q��= {   z���r��=)\�=q��= {   zA��z�X=\�B>���= {   *@m�v�B=�'�=v��= {   ?����7=�>C�= { ~  ?��v�B��'�=v��= {   ���T��<
�#>�r�= {   ~<6�/���
�#>�r�= {   Ҽ6�z�X�\�B>���= { ~  *�m���S��q�=�d�= {   �������q�=�d�= {   �����Ӽ�1�=o/�= {   �þc'<��>C�= {   ;���T�i<�>C�= {   ~8��/�z��>C�= {   Ҹ���/!<�q�=�d�=�[   ~�DS����<9(�=]��=�[   ~lC2����<�?�=���=�[   ~{D��\� <t�=z�=�[   ~�Cｏ�u=    ��Խ �    �@E��u=    ���= �    �@.��=         �    �D <��u�    ���= �    ��.�u�    ��Խ �    ��E����         �    �� <z�X=\�B>���=   �  *�6�z�X=\�B>����   �  *��Dz��=\�B>       �  *� <4ZG=\�B>       �  �� <2Z�<\�B>n�,�   �  ��QAz�X�\�B>����   �  *@�D2ZǼ\�B>n�,�   �  �;QA2ZG�\�B>       �  �? <2Z�<\�B>n�,=   �  ��F�z�X�\�B>���=   �  *@6�2ZǼ\�B>n�,=   �  �;F�z�ؽ\�B>       �  *D <��Ӽ�1�=o/�=�Q� � s~D%��E��t�=z�=�Q� � s�C\�^������=%�=�Q� � slC������q�=�d�=�Q� � s�D��r�>)\�=    j� � �z���z�X=\�B>����j� � �*@m�r��=)\�=q���j� � �zA��z��=\�B>    j� � �*�m�T�i<�>C�= ~  �  ~�_�o$=�>�%�= ~  �  R�����7=�>C�= ~  �  �_�Xś<�>�%�= ~  �  ������=�{�=�f�= �0   �=��v�B��'�=v��= �0 ~  ���v�B=�'�=v��= �0   ?������{�=�f�= �0   ����Q�)�t�=z�=p�: : �!Ĕ�v�B��'�=v��=p�: : ��������{�=�f�=p�: : ���r���S��q�=�d�=p�: : �Ŷ�      vertex_count    �         array_index_data    4                 	 
 	                                   ! " !   # $ % & % $ ' ( ) * ) ( + , - . - , / 0 1 2 1 0 3 4 5 6 5 4 7 8 9 : 9 8 ; < = > = < ? @ A B A @ C D E F E D G H I J I H K L M N M L O P Q R Q P S T U V V W T X W V Y W X X Z Y Z X [ [ X \ [ \ ] ] \ ^ [ ] _ [ _ ` W Y a W a ^ ` a [ T W b b W c c d b ^ a e ^ e ] e a ` ] e f f e g g _ f _ g ` h i j i h k l m n m l o o l p o p q r s t s r u s u v s v w w v x w x y r z u z r { y { w z { | | { y w { } ~  �  ~ � � � � � � � � � � � � � � � � � � � � � � � � �       index_count         
   primitive             format    }       aabb    r��    q���r��>\�B>q�v>      skeleton_aabb              blend_shape_data           	   material                name       pumpkin @               array_data    P  
ף<\�B>
ף� � �  L�8�5^���k>`�P� � �  *;��
ף�\�B>
ף� � �  L:8�O94;�k>`�P� � �  ����
ף�\�B>
ף< |   L�8�O94;�k>`�P< |   �.��
ף<\�B>
ף< |   L:8�5^���k>`�P< |   *���5^���k>`�P���    ~��
ף�\�B>
ף<��    ~L:��
ף�\�B>
ף���    ~L���5^���k>`�P<��    ~8�
ף<\�B>
ף<t2    �L���O94;�k>`�P�t2    �8E�
ף<\�B>
ף�t2    �L:��O94;�k>`�P<t2    ��E�O94;�k>`�P<|�    �����	<��>�	�|�    �M5��O94;�k>`�P�|�    �8���	<��>�	<|�    �M���5^���k>`�P< }   *����	<��>�	< }   M5��O94;�k>`�P< }   �.���	���>�	< }   M����	���>�	��6    M��5^���k>`�P<�6    8��5^���k>`�P��6    ����	���>�	<�6    M5�O94;�k>`�P� � �  �����	���>�	� � �  M5��5^���k>`�P� � �  *;���	<��>�	� � �  M���2Z�<\�B>n�,=   �  ��F�2Z�<\�B>n�,�   �  ��QA4ZG=\�B>       �  �� <
ף<\�B>
ף�   �  L�&?2ZǼ\�B>n�,�   �  �;QA
ף�\�B>
ף�   �  L:&?
ף�\�B>
ף<   �  L:�2
ף<\�B>
ף<   �  L��22ZǼ\�B>n�,=   �  �;F�2ZG�\�B>       �  �? <�	<��>�	<   �  M�Y9�	���>�	�   �  M5S=�	<��>�	�   �  M�S=�	���>�	<   �  M5Y9      vertex_count    .         array_index_data    �                  	 
 	                                   ! " !   # ! # $ $ # % $ % &   ' # '   ( ' ( & & ( $ $ ( ) * + , + * -       index_count    T      
   primitive             format    }       aabb    2ZG�\�B>n�,�2Z�=(\�=n��=      skeleton_aabb              blend_shape_data           	   material                name       metal A               array_data    �  Xś<�>�%�= {   �9^��k�<$G>��= {   �<�o$=�>�%�= {   R>^�E�)�t�=z�= {   ��4����<9(�=]��= { ~  �9��\� <t�=z�= { ~  �44�^������=%�= {   ��վ����{�=�f�= {   ����Q�)�t�=z�= {   ��4��E��t�=z�= {   �4���=�{�=�f�= {   �=��Z��<t�=z�= {   �<4�T�)=t�=z�= { ~  �>4�̵(��>�%�= {   |�^�/���$G>��= {   Ҽ��R���>�%�= {   Q�^�      vertex_count             array_index_data    <                     	   
 
    
           index_count          
   primitive             format    }       aabb    Q�)�t�=��=R��=ԣ�=@��<      skeleton_aabb              blend_shape_data           	   material                name       light RSRC      [remap]

importer="wavefront_obj"
type="Mesh"
path="res://.import/pumpkinTallCarved.obj-d47aefad8fdb94219b6bf0fa624107b0.mesh"

[deps]

files=[ "res://.import/pumpkinTallCarved.obj-d47aefad8fdb94219b6bf0fa624107b0.mesh" ]

source_file="res://pumpkinTallCarved.obj"
dest_files=[ "res://.import/pumpkinTallCarved.obj-d47aefad8fdb94219b6bf0fa624107b0.mesh", "res://.import/pumpkinTallCarved.obj-d47aefad8fdb94219b6bf0fa624107b0.mesh" ]

[params]

generate_tangents=true
scale_mesh=Vector3( 1, 1, 1 )
offset_mesh=Vector3( 0, 0, 0 )
optimize_mesh=true
             [gd_resource type="Environment" format=2]

[resource]
ambient_light_color = Color( 0.176471, 0.054902, 0.054902, 1 )
           [remap]

path="res://Player.gdc"
               [remap]

path="res://SwitchPumpkin.gdc"
        [remap]

path="res://buildings/Door.gdc"
       �PNG

   IHDR   @   @   �iq�   sRGB ���  �IDATx��ytTU��?�ի%���@ȞY1JZ �iA�i�[P��e��c;�.`Ow+4�>�(}z�EF�Dm�:�h��IHHB�BR!{%�Zߛ?��	U�T�
���:��]~�������-�	Ì�{q*�h$e-
�)��'�d�b(��.�B�6��J�ĩ=;���Cv�j��E~Z��+��CQ�AA�����;�.�	�^P	���ARkUjQ�b�,#;�8�6��P~,� �0�h%*QzE� �"��T��
�=1p:lX�Pd�Y���(:g����kZx ��A���띊3G�Di� !�6����A҆ @�$JkD�$��/�nYE��< Q���<]V�5O!���>2<��f��8�I��8��f:a�|+�/�l9�DEp�-�t]9)C�o��M~�k��tw�r������w��|r�Ξ�	�S�)^� ��c�eg$�vE17ϟ�(�|���Ѧ*����
����^���uD�̴D����h�����R��O�bv�Y����j^�SN֝
������PP���������Y>����&�P��.3+�$��ݷ�����{n����_5c�99�fbסF&�k�mv���bN�T���F���A�9�
(.�'*"��[��c�{ԛmNު8���3�~V� az
�沵�f�sD��&+[���ke3o>r��������T�]����* ���f�~nX�Ȉ���w+�G���F�,U�� D�Դ0赍�!�B�q�c�(
ܱ��f�yT�:��1�� +����C|��-�T��D�M��\|�K�j��<yJ, ����n��1.FZ�d$I0݀8]��Jn_� ���j~����ցV���������1@M�)`F�BM����^x�>
����`��I�˿��wΛ	����W[�����v��E�����u��~��{R�(����3���������y����C��!��nHe�T�Z�����K�P`ǁF´�nH啝���=>id,�>�GW-糓F������m<P8�{o[D����w�Q��=N}�!+�����-�<{[���������w�u�L�����4�����Uc�s��F�륟��c�g�u�s��N��lu���}ן($D��ת8m�Q�V	l�;��(��ڌ���k�
s\��JDIͦOzp��مh����T���IDI���W�Iǧ�X���g��O��a�\:���>����g���%|����i)	�v��]u.�^�:Gk��i)	>��T@k{'	=�������@a�$zZ�;}�󩀒��T�6�Xq&1aWO�,&L�cřT�4P���g[�
p�2��~;� ��Ҭ�29�xri� ��?��)��_��@s[��^�ܴhnɝ4&'
��NanZ4��^Js[ǘ��2���x?Oܷ�$��3�$r����Q��1@�����~��Y�Qܑ�Hjl(}�v�4vSr�iT�1���f������(���A�ᥕ�$� X,�3'�0s����×ƺk~2~'�[�ё�&F�8{2O�y�n�-`^/FPB�?.�N�AO]]�� �n]β[�SR�kN%;>�k��5������]8������=p����Ցh������`}�
�J�8-��ʺ����� �fl˫[8�?E9q�2&������p��<�r�8x� [^݂��2�X��z�V+7N����V@j�A����hl��/+/'5�3�?;9
�(�Ef'Gyҍ���̣�h4RSS� ����������j�Z��jI��x��dE-y�a�X�/�����:��� +k�� �"˖/���+`��],[��UVV4u��P �˻�AA`��)*ZB\\��9lܸ�]{N��礑]6�Hnnqqq-a��Qxy�7�`=8A�Sm&�Q�����u�0hsPz����yJt�[�>�/ޫ�il�����.��ǳ���9��
_
��<s���wT�S������;F����-{k�����T�Z^���z�!t�۰؝^�^*���؝c
���;��7]h^
��PA��+@��gA*+�K��ˌ�)S�1��(Ե��ǯ�h����õ�M�`��p�cC�T")�z�j�w��V��@��D��N�^M\����m�zY��C�Ҙ�I����N�Ϭ��{�9�)����o���C���h�����ʆ.��׏(�ҫ���@�Tf%yZt���wg�4s�]f�q뗣�ǆi�l�⵲3t��I���O��v;Z�g��l��l��kAJѩU^wj�(��������{���)�9�T���KrE�V!�D���aw���x[�I��tZ�0Y �%E�͹���n�G�P�"5FӨ��M�K�!>R���$�.x����h=gϝ�K&@-F��=}�=�����5���s �CFwa���8��u?_����D#���x:R!5&��_�]���*�O��;�)Ȉ�@�g�����ou�Q�v���J�G�6�P�������7��-���	պ^#�C�S��[]3��1���IY��.Ȉ!6\K�:��?9�Ev��S]�l;��?/� ��5�p�X��f�1�;5�S�ye��Ƅ���,Da�>�� O.�AJL(���pL�C5ij޿hBƾ���ڎ�)s��9$D�p���I��e�,ə�+;?�t��v�p�-��&����	V���x���yuo-G&8->�xt�t������Rv��Y�4ZnT�4P]�HA�4�a�T�ǅ1`u\�,���hZ����S������o翿���{�릨ZRq��Y��fat�[����[z9��4�U�V��Anb$Kg������]������8�M0(WeU�H�\n_��¹�C�F�F�}����8d�N��.��]���u�,%Z�F-���E�'����q�L�\������=H�W'�L{�BP0Z���Y�̞���DE��I�N7���c��S���7�Xm�/`�	�+`����X_��KI��^��F\�aD�����~�+M����ㅤ��	SY��/�.�`���:�9Q�c �38K�j�0Y�D�8����W;ܲ�pTt��6P,� Nǵ��Æ�:(���&�N�/ X��i%�?�_P	�n�F�.^�G�E���鬫>?���"@v�2���A~�aԹ_[P, n��N������_rƢ��    IEND�B`�       ECFG      application/config/name         Thingy-thang   application/config/icon         res://icon.png     input/look up`              deadzone      ?      events              InputEventKey         resource_local_to_scene           resource_name             device            alt           shift             control           meta          command           pressed           scancode        unicode           echo          script         input/look down`              deadzone      ?      events              InputEventKey         resource_local_to_scene           resource_name             device            alt           shift             control           meta          command           pressed           scancode        unicode           echo          script         input/look left`              deadzone      ?      events              InputEventKey         resource_local_to_scene           resource_name             device            alt           shift             control           meta          command           pressed           scancode        unicode           echo          script         input/look right`              deadzone      ?      events              InputEventKey         resource_local_to_scene           resource_name             device            alt           shift             control           meta          command           pressed           scancode        unicode           echo          script         input/move left`              deadzone      ?      events              InputEventKey         resource_local_to_scene           resource_name             device            alt           shift             control           meta          command           pressed           scancode   A      unicode           echo          script         input/move right`              deadzone      ?      events              InputEventKey         resource_local_to_scene           resource_name             device            alt           shift             control           meta          command           pressed           scancode   D      unicode           echo          script         input/move forward`              deadzone      ?      events              InputEventKey         resource_local_to_scene           resource_name             device            alt           shift             control           meta          command           pressed           scancode   W      unicode           echo          script         input/move back`              deadzone      ?      events              InputEventKey         resource_local_to_scene           resource_name             device            alt           shift             control           meta          command           pressed           scancode   S      unicode           echo          script      	   input/use`              deadzone      ?      events              InputEventKey         resource_local_to_scene           resource_name             device            alt           shift             control           meta          command           pressed           scancode   E      unicode           echo          script         input/flash`              deadzone      ?      events              InputEventKey         resource_local_to_scene           resource_name             device            alt           shift             control           meta          command           pressed           scancode   F      unicode           echo          script      )   physics/common/enable_pause_aware_picking         $   rendering/quality/driver/driver_name         GLES2   )   rendering/environment/default_environment          res://default_env.tres           