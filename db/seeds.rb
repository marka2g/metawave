# verbose setup
def grab_test_file(id)
  path = "#{Rails.root.join('public/test_images')}/#{id}/"
  file_name = Dir.entries("#{path}").last
  the_file = File.open(path + file_name)
  the_file
end

ImageType.create(name: 'thumb', crop_x: 75, crop_y: 75)
ImageType.create(name: 'small', crop_x: 100, crop_y: 100 )
ImageType.create(name: 'medium', crop_x: 125, crop_y: 125)
ImageType.create(name: 'large', crop_x: 175, crop_y: 175)
ImageType.create(name: 'huge', crop_x: 250, crop_y: 250)

Dog.create(name: 'Fido')
Dog.create(name: 'Lassie')
Dog.create(name: 'Benji')
Cat.create(name: 'Garfield')
Cat.create(name: 'Morris')
Cat.create(name: 'Reggie')

d1 = Dog.where(name: "Fido").first
# first, add the promo and thumb image_types...
its = ImageType.where(name: ['thumb','meduim', 'huge'])
d1.image_types << [its]
new_image_d1 = Image.create!(attachable_id: d1.id, attachable_type: d1.class.name)
test_file_d1 = grab_test_file(new_image_d1.attachable_id)
new_image_d1.name.store!(test_file_d1)
d1.images << new_image_d1
d1.save!

d2 = Dog.where(name: "Lassie").first
its = ImageType.where(name: ['thumb','meduim', 'huge'])
d2.image_types << [its]
new_image_d2 = Image.create!(attachable_id: d2.id, attachable_type: d2.class.name)
test_file_d2 = grab_test_file(new_image_d2.attachable_id)
new_image_d2.name.store!(test_file_d2)
d2.images << new_image_d2
d2.save!

d3 = Dog.where(name: "Benji").first
its = ImageType.where(name: ['thumb','meduim', 'huge'])
d3.image_types << [its]
new_image_d3 = Image.create!(attachable_id: d3.id, attachable_type: d3.class.name)
test_file_d3 = grab_test_file(new_image_d3.attachable_id)
new_image_d3.name.store!(test_file_d3)
d3.images << new_image_d3
d3.save!

c1 = Cat.where(name: "Garfield").first
its = ImageType.where(name: ['thumb','small', 'large'])
c1.image_types << [its]
new_image_c1 = Image.create!(attachable_id: c1.id, attachable_type: c1.class.name)
test_file_c1 = grab_test_file(new_image_c1.attachable_id + 3) # + 3, lame...
new_image_c1.name.store!(test_file_c1)
c1.images << new_image_c1
c1.save!

c2 = Cat.where(name: "Morris").first
its = ImageType.where(name: ['thumb','small', 'large'])
c2.image_types << [its]
new_image_c2 = Image.create!(attachable_id: c2.id, attachable_type: c2.class.name)
test_file_c2 = grab_test_file(new_image_c2.attachable_id + 3)
new_image_c2.name.store!(test_file_c2)
c2.images << new_image_c2
c2.save!

c3 = Cat.where(name: "Reggie").first
its = ImageType.where(name: ['thumb','small', 'large'])
c3.image_types << [its]
new_image_c3 = Image.create!(attachable_id: c3.id, attachable_type: c3.class.name)
test_file_c3 = grab_test_file(new_image_c3.attachable_id + 3)
new_image_c3.name.store!(test_file_c3)
c3.images << new_image_c3
c3.save!

i1 = Image.find 1
i2 = Image.find 2
i3 = Image.find 3
i4 = Image.find 4
i5 = Image.find 5
i6 = Image.find 6

it1 = ImageType.find 1
it2 = ImageType.find 2
it3 = ImageType.find 3
it4 = ImageType.find 4
it5 = ImageType.find 5

d1.image_types << [it1]
d2.image_types << [it2]
d3.image_types << [it3]
c1.image_types << [it4]
c2.image_types << [it1]
c3.image_types << [it2]